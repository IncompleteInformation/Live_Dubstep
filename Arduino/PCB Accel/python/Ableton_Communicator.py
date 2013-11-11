###to_ableton_main.py
import pygame
import pygame.midi
import time
#wraps all the subfunctions up
import Right_Hand_Serial as rhs
import Midi_Controller as mc
import POV_Fan_Serial as fan

class Ableton_Communicator:

	def __init__(self, right_serial_port, fan_serial_port, midi_in_port, midi_out_port):
		'''
		__init__(self, right_serial_port, midi_in_port, midi_out_port)

		creates a midi input port, midi output port and opens communication
		with a serial port.

		does data manipulation and sends output via midi.
		'''
		pygame.init()
		pygame.midi.init()

		self.midi_in = pygame.midi.Input(midi_in_port)
		self.midi_out =pygame.midi.Output(midi_out_port, buffer_size=128)
		self.buffer_size=1
		self.right_in = rhs.Right_Hand_Serial(right_serial_port,4,1)
		self.yaw_control=mc.Midi_Controller()
		self.roll_control=mc.Midi_Controller()
		#self.roll_control = self.right_in.roll
		#self.yaw_control  = self.right_in.yaw
		self.pitch_bend_override = 0;
		self.quantize = False
		self.curnote = -1
		self.prevnote = -1
		self.weighted_toggle=3

		self.POVfan = fan.POV_Fan_Serial(fan_serial_port) 

	def print_setup(self):
		#print pygame.midi.get_count()
		for i in range(8):
			print i, pygame.midi.get_device_info(i)


	def ser_midi_buffer(self,millis):
		ref_time = time.time()
		read_list=[]
		while (((time.time()-ref_time)*1000)<millis):
			#SERIAL PORTION
			self.right_in.read()
			#GLOVEPIE PORTION
			curmidi = self.midi_in.read(self.buffer_size)
			if curmidi!=[]:
				read_list.append(curmidi)
		return read_list


	def sanitize_note(self,raw_note):
		#print raw_note
		note = int(36+(raw_note*(36/127.)))
		return note

	def data_in(self):
		'''
		this is the looping function which takes in data and spits
		other data out
		'''
		### Write to CCs
		# roll = self.roll_control(self.right_in.roll)
		# yaw  = self.yaw_control(self.right_in.yaw)

		#print "IO_data"
		### buffer control
		grabbed_note_data = self.ser_midi_buffer(3)
		if grabbed_note_data == []:
			if self.weighted_toggle == 0:
				#print "weighted_toggle = 0"
				self.quantize = False
				return 36 ##take quantization away from python

			else:
				self.weighted_toggle -= 1
				self.quantize = True
				return self.curnote
		else:
			self.weighted_toggle = 3
			self.quantize = True
			return self.sanitize_note(grabbed_note_data[-1][0][0][2])

		### play notes


	def data_out(self):
		data_out_curnote = self.data_in()		
		roll = self.roll_control.analyze(self.right_in.roll,self.right_in.abs_on)
		yaw  = self.yaw_control.analyze(self.right_in.yaw,self.right_in.abs_on)
		self.midi_out.write([[[0xb0,self.right_in.roll_cc,roll],0]])
		#FAN
		self.POVfan.roll_write(roll/2)
		
		#/FAN
		self.midi_out.write([[[0xb0,self.right_in.yaw_cc ,yaw ],0]])
		#FAN
		self.POVfan.yaw_write(yaw/2)
		#/FAN
		#print "roll:" ,roll
		#print "yaw :" ,yaw
		#print self.right_in
		#print "note on? " ,self.right_in.note_on
		#print "quantize? ",self.quantize
		#print "curnote: ",self.curnote
		if self.right_in.note_on:
			# print self.curnote
			if data_out_curnote==self.curnote:
				pass
			else:
				if self.quantize:
					self.midi_out.write([[[0xb0,2,self.pitch_bend_override],0]])
					self.midi_out.write([[[0x80, self.curnote,127],0]])
					self.midi_out.write([[[0x90, data_out_curnote,127],0]])
					#FAN
					fan_note = data_out_curnote - 36
					fan_note = int(fan_note/1.71428)
					self.POVfan.height_write(fan_note*3)
					#print "fan_rad" ,bin(fan_note)
					#/FAN
					self.curnote=data_out_curnote
				else:
					self.midi_out.write([[[0x80, self.curnote,0],0]])
					self.midi_out.write([[[0x90, data_out_curnote,127],0]])
					self.curnote=data_out_curnote
		else:
			self.midi_out.write([[[0x80, self.curnote,0],0]])
			self.curnote = -1

	# def data_out(self):
	# 	grabbed_note_data = self.ser_midi_buffer(3)
	# 	if grabbed_note_data!=[]:
	# 		print grabbed_note_data[-1]
	# 		print grabbed_note_data[-1][0][0][2]
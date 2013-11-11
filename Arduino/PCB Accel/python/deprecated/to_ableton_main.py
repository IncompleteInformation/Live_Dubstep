###to_ableton_main.py
import pygame
import pygame.midi
import time
#wraps all the subfunctions up
import Right_Hand_Serial
import Midi_Controller

class Ableton_Communicator:

	def __init__(self, right_serial_port, midi_in_port, midi_out_port):
		pygame.init()
		pygame.midi.init()

		self.midi_in = pygame.midi.Input(midi_in_port)
		self.midi_out =pygame.midi.Output(midi_out_port, buffer_size=128)
		self.buffer_size=1
		self.right_in = new Right_Hand_Serial(right_serial_port)
		self.roll_control = new Midi_Controller(4)
		self.yaw_control  = new Midi_Controller(1)

		self.raw_curnote = -1
		self.prevnote = -1
		self.weighted_toggle=3

	def print_setup(self):
		#print pygame.midi.get_count()
		for i in range(8):
			print i, pygame.midi.get_device_info(i)


	def buffer(self,millis):
		ref_time = time.time()
		read_list=[]
		while (((time.time()-ref_time)*1000)<millis):
			#SERIAL PORTION
			self.right_in.read()
			#GLOVEPIE PORTION
			curmidi = self.midi_in.read(self.buffer_size)
			if curmidi!=[]:
				read_list.append(curmidi)
		return read_list[]


	def sanitize_note(self,raw_note):
		note = 36+(raw_note*(36/127))
		return note

	def loop(self):
		
		### Write to CCs
		roll = self.roll_control(right_in.roll)
		yaw  = self.yaw_control(right_in.yaw)
		midi_out.write([[[0xb0,self.roll_control.output_port,roll,0]])
		midi_out.write([[[0xb0,self.yaw_control.output_port ,yaw ,0]])

		### buffer control
		grabbed_note_data = buffer(3)
		if grabbed_note_data == []:
			if self.weighted_toggle == 0:
				return 0
			else:
				self.weighted_toggle -= 1
				return 1
		else:
			self.weighted_toggle = 3
			self.raw_curnote = grabbed_note[-1]
			return 2

		### play notes
		if right_in.bypass_off:

		else:
			midi.out.write([[[0x80,sanitize_note(raw_curnote),0],0]])
			midi.out.write()


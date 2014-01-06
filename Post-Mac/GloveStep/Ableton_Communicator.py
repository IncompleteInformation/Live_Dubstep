###to_ableton_main.py
import pygame
import pygame.midi
import time
import math
#wraps all the subfunctions up
import Right_Hand_Serial as rhs
import Midi_Controller as mc
#midi port 0 is IAC input, midi 3 is IAC output


class Ableton_Communicator:

	def __init__(self, right_serial_port, midi_out_port):
		'''
		__init__(self, right_serial_port, serial_in_port, midi_out_port)

		creates a midi input port, midi output port and opens communication
		with a serial port.

		does data manipulation and sends output via midi.
		'''
		pygame.init()
		pygame.midi.init()
		pygame.joystick.init()

		self.GameTrak = pygame.joystick.Joystick(0)
		self.GameTrak.init()

		self.midi_out =pygame.midi.Output(midi_out_port, buffer_size=128)
		self.buffer_size=1
		self.right_in = rhs.Right_Hand_Serial(right_serial_port)

		self.timbre_control_fast	= mc.Midi_Controller(0)	# roll
		self.timbre_control_med 	= mc.Midi_Controller(1)	# pitch
		self.timbre_control_slow	= mc.Midi_Controller(2)	# yaw
		self.volume_control			= mc.Midi_Controller(3) # GT 5
		self.drive_control			= mc.Midi_Controller(4) # GT 3,4

		self.pitch_bend_override 	= 0 	#handled
		self.quantize 				= False	#handled
		self.quantize_prev			= False
		self.curnote 				= -1
		self.prevnote 				= -1
		self.GameTrak_pitch 		= -1 	
		self.GameTrak_button_prev 	= 0 	#handled
		self.GameTrak_raw_pitch		= 0


	def print_setup(self):
		#print pygame.midi.get_count()
		for i in range(8):
			print i, pygame.midi.get_device_info(i)

	def sanitize_note(self,raw_note):
		"""
		input: a number between 0 and 127
		output: a nuber between 36 and 72 (my note interval)
		"""
		note = int(36+(raw_note*(37/127.)))
		return note

	def GameTrak_IO(self):
		"""
		axes:
			0: X_left
			1: Y_left
			2: Z_left

			3: X_right
			4: Y_right
			5: Z_right

		buttons:
			0: the only real button

		self.quantize is handled from inside this function
		self.GameTrak_pitch is handled from inside this function
		"""

		#X_left = self.GameTrak.get_axis(0) #currently unused
		#Y_left = self.GameTrak.get_axis(1)

		Z_left = 1.-((1.+self.GameTrak.get_axis(2))/2.)
		print "Z_left: ", Z_left
		X_right = self.GameTrak.get_axis(3)
		Y_right = 1+self.GameTrak.get_axis(4)
		Z_right = 1.-((1.+self.GameTrak.get_axis(5))/2.)

		button = self.GameTrak.get_button(0)

		if button==1:
			if button!=self.GameTrak_button_prev:
				self.quantize = not self.quantize
				self.GameTrak_button_prev = 1
		else:
			self.GameTrak_button_prev = 0

		volume_and_drive = self.calc_volume_and_drive(X_right,Y_right,Z_right)
		volume = volume_and_drive[0]
		drive = volume_and_drive[1]

		# self.volume_control			= mc.Midi_Controller(3) # GT 5
		# self.drive_control			= mc.Midi_Controller(4) # GT 3,4


		self.midi_out.write([[[0xb0,self.volume_control.output_port,volume],0]])
		self.midi_out.write([[[0xb0,self.drive_control.output_port ,drive] ,0]])

		self.GameTrak_raw_pitch = Z_left
		print "GTPit: ", self.GameTrak_raw_pitch
		pitch = Z_left*127
		

		self.GameTrak_pitch = self.sanitize_note(pitch)


	def calc_drive(self,x2,y2):
		if (x2<0):
		  x2=0

		if (y2>1):
		  y2=1

		if (x2<1 and y2==1):
		  x2=1

		drive = math.sqrt(x2**2+y2**2)/math.sqrt(2)

		if (x2<0 and y2>0):
  			y2=0
  			drive=0

		if (drive>1):
		  drive=1

		return int(drive*127)

	def calc_volume_and_drive(self,x2,y2,z2):
		constqnt = .55

		rmin0 = .12*constqnt
		rmax0 = .16*constqnt #.22
		rmin1 = .05*constqnt
		rmax1 = .11*constqnt #.16

		drive = self.calc_drive(x2,y2)
		drive_compatibility_mode = drive/127.

		ReffMin = rmin0*(1-drive_compatibility_mode)+rmin1*(drive_compatibility_mode)
		ReffMax = rmax0*(1-drive_compatibility_mode)+rmax1*(drive_compatibility_mode)

		if (z2<ReffMin):
		  volume=0
		elif (z2>ReffMax):
		  volume=1
		else:
		  volume=(z2-ReffMin)/(ReffMax-ReffMin)

		volume = int(127*volume)
		return [volume,drive]

	def calc_pitch_bend(self, pitch):
		print "pitch: ", pitch
		pitch *= 0x3fff
		pitch = int(pitch)
		lsbs = pitch&0b00000001111111
		msbs = pitch>>7
		return [lsbs,msbs]

	def data_out(self):
	    # EVENT PROCESSING STEP
	    for event in pygame.event.get(): # User did something
	        if event.type == pygame.QUIT: # If user clicked close
	            done=True # Flag that we are done so we exit this loop
		# self.timbre_control_fast	= mc.Midi_Controller(0)	# roll
		# self.timbre_control_med 	= mc.Midi_Controller(1)	# pitch
		# self.timbre_control_slow	= mc.Midi_Controller(2)	# yaw
		self.GameTrak_IO()

		self.right_in.read()

		roll	= self.timbre_control_fast.calc_output(self.right_in.roll,self.right_in.abs_on)
		pitch 	= self.timbre_control_med.calc_output(self.right_in.pitch,self.right_in.abs_on)
		yaw		= self.timbre_control_slow.calc_output(self.right_in.yaw,self.right_in.abs_on)
		
		self.midi_out.write([[[0xb0,self.timbre_control_fast.output_port,roll],0]])
		self.midi_out.write([[[0xb0,self.timbre_control_med.output_port,pitch],0]])
		self.midi_out.write([[[0xb0,self.timbre_control_slow.output_port,yaw ],0]])

		#print "roll:" ,roll
		#print "yaw :" ,yaw
		#print self.right_in
		#print "note on? " ,self.right_in.note_on
		#print "abs_{on?" , self.right_in.abs_on
		#print "quantize? ",self.quantize
		#print "curnote: ",self.curnote
		if self.right_in.note_on:

			if self.quantize_prev!=self.quantize:
				self.quantize_prev = self.quantize
				self.midi_out.write([[[0x80, self.curnote,127],0]]) #cancel note on q change
				self.midi_out.write([[[0xe0, 0x00, 0x40],0]])
				self.curnote = -1

			if ((self.GameTrak_pitch==self.curnote) and self.quantize):
				pass

			else:
				if self.quantize:
					print "I don't print, because fuck this line apparently"

					self.midi_out.write([[[0x80, self.curnote,127],0]])
					self.midi_out.write([[[0x90, self.GameTrak_pitch,127],0]])
					self.curnote=self.GameTrak_pitch
					
				else:
					if self.curnote!=54:
						self.midi_out.write([[[0x80, self.curnote,0],0]])
						self.midi_out.write([[[0x90, 54 ,127],0]])
					self.curnote=54

					
					pitch_wheel_control_bytes = self.calc_pitch_bend(self.GameTrak_raw_pitch)
					print '-------------------'
					self.midi_out.write([[[0xe0, pitch_wheel_control_bytes[0],pitch_wheel_control_bytes[1]],0]])
					
		else:
			self.midi_out.write([[[0x80, self.curnote,0],0]])
			self.curnote = -1


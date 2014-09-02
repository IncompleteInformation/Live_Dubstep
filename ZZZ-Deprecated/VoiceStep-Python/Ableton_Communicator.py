###to_ableton_main.py
import pygame
import pygame.midi
import time
#wraps all the subfunctions up
import Right_Hand_Serial as rhs
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

		self.midi_out =pygame.midi.Output(midi_out_port, buffer_size=128)
		self.buffer_size=1
		self.right_in = rhs.Right_Hand_Serial(right_serial_port)

		self.was_on = False


	def print_setup(self):
		#print pygame.midi.get_count()
		for i in range(8):
			print i, pygame.midi.get_device_info(i)


	def data_out(self):

		#print "hanging at read"
		self.right_in.read()
		print self.right_in.pitch
		self.midi_out.write([[[0xb0,1,self.right_in.pitch],0]])

		if self.right_in.note_on:	
			#print "whatever"	
			if self.was_on:
				pass
			else:
				self.was_on = True
				print "NOn"
				self.midi_out.write([[[0xb0,self.right_in.changeLoc+9,127],0]])
				print "many tired"
				#time.sleep(.001)
				self.midi_out.write([[[0x90, 54, 127],0]])	

		else:

			if not self.was_on:
				#print "lol"
				pass
			else:
				self.was_on = False
				print "NOff"
				self.midi_out.write([[[0x80, 54, 0],0]])
				self.midi_out.write([[[0xb0,self.right_in.changeLoc+9,127],0]])


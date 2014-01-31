#Meta_Intercept.py
import time
import serial
import pygame
import pygame.midi

class Ableton_Emissary:

	def __init__(self, MAX_in, PYTHON_out):
		'''
		__init__(self, right_serial_port, serial_in_port, midi_out_port)

		creates a midi input port, midi output port and opens communication
		with a serial port.

		does data manipulation and sends output via midi.
		'''
		self.ser = serial.Serial("/dev/tty.linvor-DevB-1")

		pygame.init()
		pygame.midi.init()

		self.midi_in  = pygame.midi.Input(MAX_in, 128)
		self.midi_out = pygame.midi.Output(PYTHON_out, buffer_size=128)

		self.NON = False
		self.instr = 0

	def intercept(self):
		if self.midi_in.poll():
			message = self.midi_in.read(1)
			if message!=[]:
				if message[0][0][0]==144: #144 = 0x90
					self.NON = True
				if message[0][0][0]==128: #128 = 0x80
					self.NON = False;
				if message[0][0][0]==176:
					if message[0][0][1]==9:
						self.instr = 0
					if message[0][0][1]==10:
						self.instr = 1
					if message[0][0][1]==11:
						self.instr = 2
					if message[0][0][1]==12:
						self.instr = 3

					if message[0][0][1]==5:
						cmd = message[0][0][2]/2
						cmd += self.instr<<6
						self.ser.write(chr(cmd))
						print bin(cmd)

		print self.instr				
		#time.sleep(.001)

	def I(self):
		while True:
			self.intercept()

a = Ableton_Emissary(0,5)
a.I()
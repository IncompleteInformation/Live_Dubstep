### MAX_MSP_interceptor.py
import pygame
import pygame.midi
import time

class Node:
	def __init__(self, next, data):
		self.next = next
		self.data = data


class Ouroboros:

	def __init__(self):
		self.data = [0,0]

	def add(self, datum):
		for i in range(1):
			self.data[i] = self.data[i+1]
		self.data[1] = datum

	def avg(self):
		total = 0
		for i in range(len(self.data)):
			total += self.data[i]
		average = total/(len(self.data))
		return average

class Ableton_Communicator:

	def __init__(self, MAX_in, PYTHON_out):
		'''
		__init__(self, right_serial_port, serial_in_port, midi_out_port)

		creates a midi input port, midi output port and opens communication
		with a serial port.

		does data manipulation and sends output via midi.
		'''
		pygame.init()
		pygame.midi.init()

		self.midi_in  = pygame.midi.Input(MAX_in, 128)
		self.midi_out = pygame.midi.Output(PYTHON_out, buffer_size=128)

		self.prev_pitch = 0
		self.noise_pitch_high = 70
		self.noise_pitch_low = 40
		self.pitch_list = Ouroboros()

		self.running_counter = 0

	def intercept_pitch(self):
		if self.midi_in.poll():
			message = self.midi_in.read(1)
			if message!=[]:
				if message[0][0][0]==224: #224 = 0xe0
					pitch = message[0][0][2]
					if abs(self.pitch_list.avg() - pitch) < 10: # 8% different
						self.midi_out.write([[[0xe0,0,pitch],0]])
						self.prev_pitch = pitch
						print "accepted", pitch
					else:
						self.midi_out.write([[[0xe0,0,self.prev_pitch],0]])
						print "rejected", pitch
						print "sent    ", self.prev_pitch
					self.pitch_list.add(pitch)
				else:
					self.midi_out.write(message)
					#print message

		time.sleep(.001)



	def intercept(self):
		while True:
			self.intercept_pitch()

a = Ableton_Communicator(1,3)
a.intercept()
import serial
import pygame
import pygame.midi
import time


#SETUP AND GLOBALS
pygame.init()
pygame.midi.init()
midi_in_ID =2 	#Internal MIDI 2 in
midi_out_ID = 4  #Internal MIDI 1 out
midi_in = pygame.midi.Input(midi_in_ID)
midi_out = pygame.midi.Output(midi_out_ID, buffer_size=128)
bufSize = 1
right_in = 5#serial.Serial(15) #right hand data stream.
prev_max_4 = 0
prev_accel_4 = 0

prev_max_1 = 0
prev_accel_1 = 0

bypass_off = 0
abs_on	= 0
cc0_val = 0
cc1_val = 0

#0 to 125 is x, 126-251 is z, 252/253 are note on/off, 254/255 are abs/max	

def sample():
	temp1 = right_in.read()
	temp2 = right_in.read()
	if temp1<temp2:
		print "x=" + str(ord(temp1)) + ", z=" + str((ord(temp2)-126))
	else:
		temp3 = right_in.read()
		print "x=" + str(ord(temp2)) + ", z=" + str((ord(temp3)-126))

def setup():
	#print pygame.midi.get_count()
	for i in range(8):
		print i, pygame.midi.get_device_info(i)

def send_4(accel):
	global prev_max_4
	global prev_accel_4
	if abs_on:
		accel-=63
		accel*=2
		return abs(accel)
	else:
		accel-=63
		accel*=2
		accel=abs(accel)
		if (accel<prev_max_4 and (prev_accel_4>(accel+20))):
			prev_accel_4=accel
			prev_max_4=accel
			return accel
		else:
			prev_accel_4=accel
			return prev_max_4


def send_1(accel):
	global prev_max_1
	global prev_accel_1
	if abs_on:
		accel-=63
		accel*=2
		print accel
		return abs(accel)
	else:
		accel-=63
		accel*=2
		accel=abs(accel)
		if (accel<prev_max_1 and (prev_accel_1>(accel+20))):
			prev_accel_1=accel
			prev_max_1=accel
			return accel
		else:
			prev_accel_1=accel
			return prev_max_1

def buffer(millis):
	ref_time = time.time()
	read_list=[]
	while ((time.time()-ref_time)*1000<millis):
		#SERIAL PORTION
		serial_peek()
		#GLOVEPIE PORTION
		temp = midi_in.read(1)
		if temp!=[]:
			read_list.append(temp)
	return read_list

def serial_peek():
	global bypass_off
	global abs_on
	global cc0_val
	global cc1_val
	serial.command = ord(right_in.read())
	if serial_command==254:
		bypass_off = abs(bypass_off-1)
	elif serial_command==255:
		abs_on = abs(abs_on-1)
	else:
		if serial_command<127:
			cc0_val = serial_command
		else:
			cc1_val = serial_command-127	

def loop(curnote, prevnote, weighted_toggle):
	###
	global bypass_off
	global abs_on
	global cc0_val
	global cc1_val
	###

	
	grabbed_note = buffer(3)
	### send Serial Data

	midi_out.write([[[0xb0,4,send_4(cc0_val)],0]])
	midi_out.write([[[0xb0,1,send_1(cc1_val)],0]])

	### deal with midi
	if grabbed_note == []:
		if weighted_toggle == 0:
			return [curnote, weighted_toggle]
		else:
			weighted_toggle -= 1
			return [curnote, weighted_toggle]
	else:
		weighted_toggle = 3
		curnote = grabbed_note[-1]





	serial_command = ord(right_in.read())
	# print serial_command
	if serial_command==254:
		bypass_off = abs(bypass_off-1)
		print bypass_off
		if bypass_off:
			midi_out.write([[[0x80,36,0],0]])
		else:
			midi_out.write([[[0x90,36,64],0]])
	elif serial_command==255:
		print "255 " + str(abs_on)
		abs_on = abs(abs_on-1)
	else:
		# print serial_command
		if serial_command<127:
			midi_out.write([[[0xb0,4,send_4(serial_command)],0]])
		else:
			midi_out.write([[[0xb0,1,send_1(serial_command-127)],0]])

	return [curnote, weighted_toggle]



def main():
	curnote = []
	prevnote = 0
	setup()
	running=True
	weighted_toggle = 3   ###this is the number of times that the program must find nothing IN A ROW coming from glovepie midi in order to end python control of the pitch
	while running:
		if (pygame.event.poll().type == pygame.QUIT):
			running = False
		else:
			loop(curnote,weighted_toggle)		





main()
# while  True:
# 	main()
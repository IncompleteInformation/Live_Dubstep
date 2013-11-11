import pygame
import pygame.midi
import time

#SETUP AND GLOBALS
pygame.init()
pygame.midi.init()
midi_in_ID =2  #Internal MIDI 2 in
midi_out_ID = 4  #Internal MIDI 1 out
midi_in = pygame.midi.Input(midi_in_ID)
#midi_out = pygame.midi.Output(midi_out_ID, buffer_size=128)
bufSize = 1

def main2():
	reftime = time.time()
	while True:
		if midi_in.read(1)!=[]:
			print time.time()-reftime
			reftime = time.time()


def buffer(ms):
	ref_time = time.time()
	read_list=[]
	while ((time.time()-ref_time)*1000<ms):
		temp = midi_in.read(1)
		if temp!=[]:
			read_list.append(temp)
	return read_list

def buffer_wrapper(toggle_num):
	flip = 0
	while flip<toggle_num:
		x= buffer(3)
		if len(x) ==0:
			flip+=1
		else:
			flip =0
		print x


main()
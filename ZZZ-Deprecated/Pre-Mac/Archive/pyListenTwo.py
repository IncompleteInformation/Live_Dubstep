import pygame
import pygame.midi
import math
import time

def main():
    pygame.init()
    pygame.midi.init()
    midi_ID = 1
    midi_in = pygame.midi.Input(midi_ID)
    bufSize = 1

    running = True
    iteration =0
    while(running):

        if (pygame.event.poll().type == pygame.QUIT):
            running = False
        else:
            midiParse(midi_in,bufSize)
            iteration+=1
            #print "iteration", iteration
            #time.sleep(.012) #sleep in seconds
            #print spriteDLL.head.next.data


    del midi_in
    pygame.midi.quit()

def midiParse(midi_in,bufSize):
	get = midi_in.read(bufSize)
	if get!=[]:
		print get

main()
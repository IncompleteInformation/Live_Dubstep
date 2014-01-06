import serial
import pygame
import pygame.midi
import math
import time

def main():
    pygame.init()
    pygame.midi.init()
    #serial_out=7 #this is actually port 8.
    #ser=serial.Serial(serial_out)
    midi_in_ID =2
    midi_out_ID = 4
    midi_in = pygame.midi.Input(midi_in_ID)
    midi_out = pygame.midi.Output(midi_out_ID, buffer_size=128)
    bufSize = 1


    #print pygame.midi.get_count()
    for i in range(8):
    	print i, pygame.midi.get_device_info(i)


    running = True
    lastPlayed = None
    #iteration =0
    while(running):

        if (pygame.event.poll().type == pygame.QUIT):
            running = False
        else:
            midiNoteRaw=midiListen(midi_in,bufSize)
            #print "outside"
            #print "bits = ", fourteenBits
            if midiNoteRaw=="Cancel Signal Received":
            	if lastPlayed!=None:
            		midi_out.write([[[0x80,lastPlayed,0],0]])
            		print "stopping", lastPlayed
            		lastPlayed=None
            else:
	            curNote=int((midiNoteRaw*36)+48)

	            if curNote != lastPlayed:
	            
	            	if (lastPlayed!=None):
	            		print lastPlayed, "stopping"
	            		print curNote, "playing"
	            		midi_out.write([[[0x80,lastPlayed,0],0]])
	            		midi_out.write([[[0x90,curNote,64],0]])
	            		lastPlayed=curNote
	            		print lastPlayed,curNote
	            	else:
	            		print curNote, "playing"
	            		midi_out.write([[[0x90,curNote,64],0]])
	            		lastPlayed=curNote

	            #print "iteration", iteration
	            #time.sleep(.012) #sleep in seconds
	            #print spriteDLL.head.next.data


    del midi_in
    del midi_out
    pygame.midi.quit()


def midiListen(midi_in,bufSize):
	signalFound = False
	while not signalFound:
		grabbed = midiGrab(midi_in,bufSize)
		if grabbed == "Cancel Signal Received"
			return "Cancel Signal Received"
		if grabbed[0]=="quantize":
			return 


def midiGrab(midi_in,bufSize):
	get = midi_in.read(bufSize)
	if get!=[]:
		print get
		if get[0][0][0]==144:
			return "Cancel Signal Received"
		if get[0][0][1]==1:
			return "quantize",get[0][0][2] 
		if get[0][0][1]==2:
			return "slide",get[0][0][2]
	return ["Do Nothing"] # in an array for handling in midiListen

main()
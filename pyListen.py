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
    midi_in_ID = 2
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
            fourteenBits=midiParse(midi_in,bufSize)
            #print "outside"
            #print "bits = ", fourteenBits
            if fourteenBits==None:
            	if lastPlayed!=None:
            		midi_out.write([[[0x80,lastPlayed,0],0]])
            		print "stopping", lastPlayed
            		lastPlayed=None
            else:
	            curNote=int(((fourteenBits/16383.0)*36)+48)

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

#def calcInputValue()
def midiParse(midi_in,bufSize):
	grab1=False
	grab2=False
	while not (grab1 and grab2):
		grabbed=midiGrab(midi_in,bufSize)
		if grabbed==None:
			return None
		if grabbed[0]==1:
			grab1=True
			mostSignificant7=grabbed[1]
		if grabbed[0]==2:
			grab2=True
			leastSignificant7=grabbed[1]
	allBits = mostSignificant7*128+leastSignificant7
	#print allBits
	return allBits

def midiGrab(midi_in,bufSize):
	get = midi_in.read(bufSize)
	if get!=[]:
		print get
		if get[0][0][0]==144:
			#print "Cancel"
			return None
		if get[0][0][1]==1:
			return 1,get[0][0][2] 
		if get[0][0][1]==38:
			return 2,get[0][0][2]
	return [0]		

main()
#pyLights grabs data sent by glovePie and translates it into serial port talk for receipt by the arduino.

import serial
import pygame
import pygame.midi
import math
import time

def main():
    pygame.init()
    pygame.midi.init()
    serial_out=7 #this is actually port 8.
    ser=serial.Serial(serial_out)
    midi_in_ID =1
    midi_in = pygame.midi.Input(midi_in_ID)
    bufSize = 1


    running = True
    lastLevel=None


    toggle=False
    prevLev=-1
    prevWub=-1
    level = -1
    wubble = -1
    while(running):
        if (pygame.event.poll().type == pygame.QUIT):
            running = False
        else:          
            handle=midiGrab(midi_in,bufSize)
            #print handle
            if (handle!=None):
                print handle
                if handle=="on":
                    toggle=True
                if handle=="off":
                    toggle=False
                if (handle[0]==1):
                    print "hello"
                    lastLevel=handle[1]
                    wubble = handle[1]/16
                    print wubble
                    if (prevWub!=wubble):
                        ser.write(chr(wubble+97))
                        prevWub=wubble
                        print wubble
                '''
                if (handle[0]==6): #if handle[0] is midi cc6, drive
                    level = handle[1]/16
                    if (prevLev!= level):
                        ser.write(chr(level+48))
                        prevLev=level
                
                elif (handle[0]==31):
                    ser.write("C")
                    print "C"
                elif (handle[0]==32):
                    ser.write("D")
                    print "D"
                elif (handle[0]==33):
                    ser.write("E")
                    print "E"
                elif (handle[0]==34):
                    ser.write("F")
                    print "F"
                '''
            '''
            else:#(lastLevel!=None and toggle):
                ser.write(chr(prevWub+97))
                print "wubble", wubble
                #ser.write(chr(level+48))
                #print level
                
            #else:
                #ser.write(PWMStrGen(0))
            '''
    del midi_in
    pygame.midi.quit()


def midiGrab(midi_in,bufSize):
    get = midi_in.read(bufSize)
    if get!=[]:
        if get[0][0][0]==0x90:
            #print get
            return "on"
        if get[0][0][0]==0x80:
            print get
            return "off"
        if (get[0][0][1]>34):
            get=[]

    if get!=[]:
        if (get[0][0][1]==1):
            return (get[0][0][1],get[0][0][2])
        if (get[0][0][1]!=1):
            return (get[0][0][1],get[0][0][2])
    return None		

'''
def PWMStrGen(midiVal):
	PWMStr=""
	for i in range(127):
		if (midiVal/(i+1)>0):
			PWMStr+="A"
		else:
			PWMStr+="B"
		PWMStr+="B"
	return PWMStr
'''
main()
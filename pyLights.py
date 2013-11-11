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
    bufSize = 10


    running = True
    lastLevel=None

    prevWub=-1
    wubble = -1
    while(running):
        if (pygame.event.poll().type == pygame.QUIT):
            running = False
        else:
            pygame.time.wait(1)          
            handle=midiGrab(midi_in,bufSize)
            
            if (handle!=None):
                # print handle
                # lastLevel=handle
                wubble = handle/16
                # print wubble
                if (prevWub!=wubble):
                    if ((wubble<8) and (wubble>=0)):
                        pygame.time.wait(1) 
                        ser.write(chr(wubble+97))
                        pygame.time.wait(1) 
                        prevWub=wubble
                        print wubble

    del midi_in
    pygame.midi.quit()


def midiGrab(midi_in,bufSize):
    get = midi_in.read(bufSize)

    if get!=[]:
        if (get[0][0][1]==1):
            return get[0][0][2]
    return None		

main()
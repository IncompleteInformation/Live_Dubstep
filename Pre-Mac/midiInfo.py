import serial
import pygame
import pygame.midi
import math
import time

def main():
    pygame.init()
    pygame.midi.init()


    #print pygame.midi.get_count()
    for i in range(8):
    	print i, pygame.midi.get_device_info(i)

main()
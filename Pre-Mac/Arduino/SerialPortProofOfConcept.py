import serial
ser = serial.Serial(7)  # open first serial port
print ser.portstr       # check which port was really used
#ser.write("A")    		# write a string
#ser.close()             # close port


import pygame
from pygame.locals import *
 
pygame.init()
screen = pygame.display.set_mode((640, 480))
pygame.display.set_caption('Pygame Caption')
pygame.mouse.set_visible(0)
 
done = False
twoDown=False
while not done:
   for event in pygame.event.get():
      if (event.type == KEYDOWN):
         print event
         if (event.key == K_ESCAPE):
            done = True
         if (event.key == K_1):
         	ser.write("AAAAAAAA")
         if (event.key == K_2):
            twoDown=True
      if (event.type == KEYUP):
         if (event.key == K_1):
         	ser.write("B")
         if (event.key == K_2):
            twoDown = False
   if twoDown:
      #print "sent packet"
      ser.write("AABAABAABAABAAB")
ser.close()
import sys
import pygame
import pygame.midi as midi
import time

pygame.init()
midi.init()

try:
	out = midi.Output(1)
except:
	out = midi.Output(3)


if len(sys.argv)<3:
	print "USAGE: -s <startCC> -e <endCC> -d <delay (def=1)>"
else:
	startCC = int(sys.argv[1])
	endCC = int(sys.argv[2])
	if len(sys.argv) < 4:
		delay = 1
	else:
		delay = float(sys.argv[3])




	for i in range (startCC,endCC+1):
		time.sleep(delay)
		print "sent data to CC ", i
		out.write([[[0xb0,i,127],0]])



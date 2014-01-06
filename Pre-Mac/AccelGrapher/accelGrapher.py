import pygame
import pygame.midi
import math
import time

def main():
	fileName=time.strftime('%c')
	fileName=fileName.replace('/','_')
	fileName=fileName.replace(':','-')
	fileName+=".csv"
	writeFile=open(fileName,'w')
	pygame.init()
	pygame.midi.init()
	midi_in_ID = 1
	midi_in = pygame.midi.Input(midi_in_ID)
	#midi_out = pygame.midi.Output(midi_out_ID, buffer_size=128)
	bufSize = 1


	#print pygame.midi.get_count()
	for i in range(8):
		print i, pygame.midi.get_device_info(i)


	running = True
	lastPlayed = None
	#iteration =0
	writeFile.write("time(ms),cc1Val(0-127)\n")
	while(running):
		if (pygame.event.poll().type == pygame.QUIT):
			running = False
		else:
			data = midiGrab(midi_in,bufSize)
			if data!=None:
				writeFile.write(data+"\n")

	del midi_in
	pygame.midi.quit()

#def calcInputValue()

def midiGrab(midi_in,bufSize):
	get = midi_in.read(bufSize)
	if get!=[]:
		if (get[0][0][0]==176 and get[0][0][1]==1):
			cc1Val = str(get[0][1]) +","+ (str(get[0][0][2]))
			return cc1Val
	return None
			

main()
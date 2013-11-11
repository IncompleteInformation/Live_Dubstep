import serial
import pygame
import pygame.midi
import math




# def accel_grab(ser):
# 	buffer_open=False
# 	buffered_num=""
# 	while True:
# 		cur_byte=ser.read()
# 		if buffer_open:
# 			if (cur_byte == "\r"):
# 				buffer_open=False
# 				return buffered_num
# 			else:
# 				buffered_num+=cur_byte
# 		elif (cur_byte == "\n"):
# 			buffer_open=True

# def sanitize(accel_data):
# 	accel_data -=248
# 	accel_data /=248.0
# 	accel_data = math.fabs(accel_data)
# 	accel_data*=127
# 	accel_data=int(accel_data)
# 	return accel_data


def main():
	# pygame port
	pygame.init()
	pygame.midi.init()
	#serial_out=7 #this is actually port 8.
	#ser=serial.Serial(serial_out)
	midi_out_ID = 4
	midi_out = pygame.midi.Output(midi_out_ID, buffer_size=128)

	# 0xB0 are CCs or continuous controllers
	serial_in=15 #bluetooth is serial 16
	ser = serial.Serial(serial_in)	
	running = True

	while(running):

		if (pygame.event.poll().type == pygame.QUIT):
			running = False
		else:
			accel=ord(ser.read())
			if accel<128:
				print ("z: " + accel)
				midi_out.write([[[0xB0,1,accel],0]])
			else:
				print ("x: " + accel)
				midi_out.write([[[0xB0,2,accel],0]])

main()
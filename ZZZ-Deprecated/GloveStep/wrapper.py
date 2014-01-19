'''
Main.py
'''
import Ableton_Communicator as ac

com = ac.Ableton_Communicator("/dev/tty.linvor-DevB" , 1)

while True:
	#print "x"
	com.data_out()
	#print "h"
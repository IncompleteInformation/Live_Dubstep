'''
Main.py
'''
import time
import Ableton_Communicator as ac
try:
	com = ac.Ableton_Communicator("/dev/tty.linvor-DevB" , 1)
except:
	com = ac.Ableton_Communicator("/dev/tty.linvor-DevB" , 3)


while True:
	#print "x"
	com.data_out()
	#time.sleep(.0001)
	#print "h"
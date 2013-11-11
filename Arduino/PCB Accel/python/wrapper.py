'''
Main.py
'''
import Ableton_Communicator as ac

com = ac.Ableton_Communicator(15, 20 , 2, 4)

while True:
	#print "x"
	com.data_out()
	#print "h"
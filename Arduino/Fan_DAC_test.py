import serial as s
import time as t
fan = s.Serial("/dev/tty.linvor-DevB-1")

for i in range(255):
	fan.write(chr(i))
	print bin(i)[2:].zfill(8)
	t.sleep(.2)




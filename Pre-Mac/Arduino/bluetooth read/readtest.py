import serial
wireless = serial.Serial(15)

def find():
	while True:
		read = wireless.read()
		if read!="\xff":
			print read

def main():
	find()

main()
import serial

class Right_Hand_Serial:
	def __init__(self,serial_channel, roll_cc, yaw_cc):
		self.serial=serial.Serial(serial_channel)
		self.note_on=False #python still provides the base pitch, but does not quantize
		self.abs_on=False
		self.roll=-1
		self.yaw=-1
		self.roll_cc = roll_cc
		self.yaw_cc  = yaw_cc

	def read(self):
		serial_command = ord(self.serial.read())

		if serial_command==254:
			self.note_on = abs(self.note_on-1)
			#print "note_on:\t" , self.note_on

		elif serial_command==255:
			self.abs_on = abs(self.abs_on-1)
			#print "abs_on:\t" , self.abs_on
		else:
			if serial_command<127:
				self.yaw = serial_command
				#print "roll:\t", self.roll
			else:
				self.roll = serial_command-127
				#print "yaw:\t", self.yaw
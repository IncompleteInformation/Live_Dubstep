import serial

class Right_Hand_Serial:
	def __init__(self,serial_port):
		self.serial=serial.Serial(serial_port)
		self.note_on=False #python still provides the base pitch, but does not quantize
		self.abs_on=False
		self.roll=	-1
		self.pitch=	-1
		self.yaw=	-1

	def read(self):
		serial_command_type = ord(self.serial.read())
		if serial_command_type<(0+128):
			serial_command_type = ord(self.serial.read())

		elif serial_command_type==(0+128):
			self.note_on = not self.note_on

		elif serial_command_type==(1+128):
			self.abs_on = not self.abs_on

		elif serial_command_type==(2+128):
			#pitch
			self.pitch	= ord(self.serial.read())
		elif serial_command_type==(3+128):
			#roll
			self.roll	= ord(self.serial.read())
		elif serial_command_type==(4+128):
			#yaw
			self.yaw	= ord(self.serial.read())
		else:
			print "serial command type out of range"
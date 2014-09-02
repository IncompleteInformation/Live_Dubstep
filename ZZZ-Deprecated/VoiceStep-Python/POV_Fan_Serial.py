import serial

class POV_Fan_Serial:
	def __init__(self, serial_channel):
		self.serial = serial.Serial(serial_channel)
		self.RED = 0; #0 to 63
		self.GREEN = 0; #0 to 63
		self.BLUE = 0; #0 to 63
		self.RADIUS = 0; #0 to 63
	
	def write(cctype, data):

		cctype = cctype<<6
		if data>63:
			data=63
			print "data overflow"
		output = cctype+data
		output = chr(output)
		self.serial.write(output)

	def height_write(self,height):
		if height > 63:
			height = 63
			print "height overflow"
		cctype_red  = 0<<6 #red
		cctype_blue = 2<<6 #blue
		self.RED = 63-height
		self.BLUE = height
		red_out = cctype_red+self.RED
		print "red_out: ", bin(red_out)
		red_out = chr(red_out)
		blue_out = cctype_blue+self.BLUE
		print "blue_out: ", bin(blue_out)
		blue_out = chr(blue_out)
		#print bin(blue_out)
		self.serial.write(red_out)
		self.serial.write(blue_out)

	def roll_write(self,mag):
		if mag > 63:
			mag = 63
			print "roll mag overflow"
		cctype = 3<<6 #radius
		self.RADIUS = mag
		print "rad out: ", self.RADIUS
		roll_out = cctype + self.RADIUS
		print "rad_out: ", bin(roll_out)
		roll_out = chr(roll_out)

		self.serial.write(roll_out)

	def yaw_write(self,mag):
		if mag > 63:
			mag = 63
			print "yaw mag overflow"
		cctype = 1<<6 #green
		self.GREEN = mag
		green_out = cctype + self.GREEN
		#print "green_out: ", bin(green_out)
		green_out = chr(green_out)

		self.serial.write(green_out)



class Midi_Controller:
	def __init__(self, output_port):
		self.max 	=0
		self.output_port = output_port
		self.data = None

	def calc_output(self,accel,abs_on):	#self,int,bool

		if abs_on:
			self.max=accel
			return accel

		else:
			#if (accel>self.max or (accel>(self.prev_accel+10))):
			if (accel>self.max):
				self.max=accel
				print "accel: ", accel
				return accel
			else:
				return self.max

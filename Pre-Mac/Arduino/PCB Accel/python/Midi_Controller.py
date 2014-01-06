class Midi_Controller:
	def __init__(self):
		self.max 	=0
		self.prev_accel =0
		# self.output_port = output_port

	def analyze(self,accel,abs_on):	#self,int,bool

		if abs_on:
			# print accel
			accel-=63
			accel*=2
			return abs(accel)
		else:
			accel-=63
			accel*=2
			accel=abs(accel)
			if (accel>self.max or (accel>(self.prev_accel+10))):
				self.prev_accel=accel
				self.max=accel
				return accel
				print "in ABS"
			else:
				self.prev_accel=accel
				return self.max
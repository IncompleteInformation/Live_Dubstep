import pygame
pygame.init()
pygame.joystick.init()

jsct = pygame.joystick.get_count()
if jsct < 1:
	stdout>>"gametrak unlugged"
	
gametrak = pygame.joystick.Joystick(0)
gametrak.init()

print "numaxes", gametrak.get_numaxes
print "numbuttons", gametrak.get_numbuttons()



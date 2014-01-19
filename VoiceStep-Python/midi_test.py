import pygame as p
import pygame.midi as m
p.init()
m.init()
for i in range(m.get_count()):
	print i, m.get_device_info(i)



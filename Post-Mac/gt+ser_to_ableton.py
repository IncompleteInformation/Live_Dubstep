'''
gt+ser_to_ableton.py is designed to take input from the GameTrak
PIC controller as well as my hacked BT serial glove to send MIDI
data to Ableton.

May Ra fuel my conquest.
'''

import time
import serial
import pygame
import pygame.midi


pygame.init()
pygame.midi.init()

midi_out =pygame.midi.Output(midi_out_port, buffer_size=128)
buffer_size=1

yaw_control=mc.Midi_Controller()
roll_control=mc.Midi_Controller()

pitch_bend_override = 0;
quantize = False
curnote = -1
prevnote = -1
weighted_toggle=3


//Finger_Trigger.cpp

#include "Arduino.h"
#include "Finger_Trigger.h"

Finger_Trigger::Finger_Trigger(int _pin)
{
	was_low = true;
  pin = _pin;
}

int Finger_Trigger::triggered(){
  int hold_read = digitalRead(pin);
  digitalWrite(13,hold_read);
  if (hold_read == LOW){
    if (!was_low){
      was_low=true;
      return true;
    }
  }
  
  if (hold_read == HIGH){
    if (was_low){
      was_low=false;
      return true;
    }
  } 
  return false;
}
//Finger_Trigger.h

#ifndef Finger_Trigger_h
#define Finger_Trigger_h

class Finger_Trigger{
  int pin;
  int was_low;
public:
  int triggered();
  Finger_Trigger(int); //constructor
};

#endif
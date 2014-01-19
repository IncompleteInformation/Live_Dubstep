class Finger_Trigger{
  int pin;
  boolean was_low;
public:
  boolean triggered();
};

boolean Finger_Trigger::triggered(){
  int hold_read = digitalRead(pin);
  
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
}

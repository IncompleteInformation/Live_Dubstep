char last_read;

void setup() {                
  // The EL channels are on pins 2 through 9
  // Initialize the pins as outputs
  pinMode(2, OUTPUT);  // channel A  
  pinMode(3, OUTPUT);  // channel B   
  pinMode(4, OUTPUT);  // channel C
  pinMode(5, OUTPUT);  // channel D    
  pinMode(6, OUTPUT);  // channel E
  pinMode(7, OUTPUT);  // channel F
  pinMode(8, OUTPUT);  // channel G
  pinMode(9, OUTPUT);  // channel H
  // We also have two status LEDs, pin 10 on the Escudo, 
  // and pin 13 on the Arduino itself
  pinMode(10, OUTPUT);     
  pinMode(13, OUTPUT);  
  Serial.begin(9600);  

}

void loop(){
  last_read = Serial.read();
  last_read -= 97; //correct for character offset
  last_read += 2;  //correct for pin offset
  //digitalWrite(last_read,HIGH);
  //PORTD|=B00001000;
  if ((last_read>=2) && (last_read<10)){
    write_all(last_read); 
  }
} 


void write_lights(char on)
{
  int i = 2;
  while (i<10){
    if (i==on){
      
      digitalWrite(i,HIGH);
      delay(10);
    }else{
      digitalWrite(i,LOW);
    }
    i++;
  }
}

void write_all(char on)
{
  int i = 2;
  while (i<10){
    if (i<on){
      digitalWrite(i,HIGH);
    }
    if (i==on){
      
      digitalWrite(i,HIGH);
      delay(10);
    }
    if (i>on){
      digitalWrite(i,LOW);
    }
    i++;
  }
}

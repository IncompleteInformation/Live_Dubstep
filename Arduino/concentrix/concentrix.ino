// Test sketch for El Escudo Dos
// Turn each EL channel (A-H) on in sequence and repeat
// Mike Grusin, SparkFun Electronics
int incomingByte=0;
int inst = 1; //for incoming serial data
int pulseLen;
int wubLevel;
int curLight;

void setup() {  
  Serial.begin(9600); //Open Serial Port, data rate=9600  
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
}
/*
void pulse(int len, int light){ //8 ms pulse. 0<=len<=8
  digitalWrite(light,HIGH);
  delay(len);
  digitalWrite(light,LOW);
  delay(8-len);
}

void parallel_pulse(int len){
  PORTD |= 11111100;
  digitalWrite(8,HIGH);
  delay(len);
  PORTD &= ~11111100;
  digitalWrite(8,LOW);
  delay(8-len);
}
*/
void loop() 
{
  // act on data only when you receive data:
  if (Serial.available() < 1){
    return;
  }
  
  // read the incoming byte:
  incomingByte = Serial.read();
  /*if (incomingByte==67){
    inst=1;
  }
  if (incomingByte==68){
    inst=2;
  }
  if (incomingByte==69){
    inst=3;
  }
  if (incomingByte==70){
    inst=4;
  }
  if ((incomingByte>=48) &&(incomingByte<=55)){
    pulseLen = incomingByte-47;
  }*/
  if ((incomingByte>=97) &&(incomingByte<=103)){
    wubLevel = incomingByte-97;
  }
  /*if (inst==1){
    PORTD&= ~B11111100;
    digitalWrite(8,LOW);
    pulse(pulseLen,wubLevel); //pulse the pulse length on the wublevelth pin.
  }*/

  //parallel_pulse(8); //pulse with 
  //digitalWrite(8,HIGH);
  int i =2;
  while (i<9){
    if (i==wubLevel){
      digitalWrite(i,HIGH);
    i++;
    }else{
      digitalWrite(i,LOW);
    i++;
    }
  }
}


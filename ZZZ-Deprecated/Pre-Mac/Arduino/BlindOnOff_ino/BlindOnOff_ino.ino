// Test sketch for El Escudo Dos
// Turn each EL channel (A-H) on in sequence and repeat
// Mike Grusin, SparkFun Electronics
int incomingByte=0;
int inst = 1; //for incoming serial data

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

void loop() 
{
  // act on data only when you receive data:
  if (Serial.available() < 1){
    return;
  }
  
  // read the incoming byte:
  incomingByte = Serial.read();
  if (incomingByte==67){
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
  if (inst==1){
    if (incomingByte==65){
      digitalWrite(2,HIGH);
      digitalWrite(3,HIGH);
      //digitalWrite(4,HIGH);
      //digitalWrite(5,HIGH);
      //digitalWrite(6,HIGH);
      //digitalWrite(7,HIGH);
      //digitalWrite(8,HIGH);
      //digitalWrite(9,HIGH);
    }
    if (incomingByte==66){
      digitalWrite(2,LOW);
      digitalWrite(3,LOW);
      //digitalWrite(4,LOW);
      //digitalWrite(5,LOW);
      //digitalWrite(6,LOW);
      //digitalWrite(7,LOW);
      //digitalWrite(8,LOW);
      //digitalWrite(9,LOW);
    }
  }
}

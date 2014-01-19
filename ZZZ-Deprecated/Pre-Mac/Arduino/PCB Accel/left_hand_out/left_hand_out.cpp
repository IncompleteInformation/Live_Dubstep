// include the SoftwareSerial library so you can use its functions:
#include <SoftwareSerial.h>

#define rxPin 2
#define txPin 3

//thumb is connected to +5v
#define index  4
#define middle 5
#define ring   6
#define pinky  7

// set up a new serial port
SoftwareSerial mySerial =  SoftwareSerial(rxPin, txPin);

boolean index_was_low=true;
boolean middle_was_low=true;
boolean ring_was_low=true;
boolean pinky_was_low=true;
//vars
int store_check;

void setup(){
  //hand switch setup
  pinMode(index,INPUT);
  pinMode(middle,INPUT);
  pinMode(ring,INPUT);
  pinMode(pinky,INPUT);
  //bluetooth serial setup
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT); 
  mySerial.begin(9600);

}

int check_switches(){
  if (digitalRead(index)==HIGH){
    if (index_was_low) {
      index_was_low = false; 
      middle_was_low=true;
      ring_was_low=true; 
      pinky_was_low=true; 
      return 0;}
    else {return -1;}}
  if (digitalRead(middle)==HIGH){
    if (index_was_low) {
      index_was_low = true; 
      middle_was_low=false;
      ring_was_low=true; 
      pinky_was_low=true; 
      return 1;}
    else {return -1;}}
  if (digitalRead(ring)==HIGH){
    if (index_was_low) {
      index_was_low = true; 
      middle_was_low=true;
      ring_was_low=false;
      pinky_was_low=true; 
      return 2;}
    else {return -1;}}
  if (digitalRead(pinky)==HIGH){
    if (index_was_low) {
      index_was_low = true; 
      middle_was_low=true;
      ring_was_low=true;
      pinky_was_low=false; 
      return 3;}
    else {return -1;}}
  return -1;
}

void loop(){
  store_check = check_switches();
  if (store_check!=-1){
    mySerial.write(store_check);
  }
}



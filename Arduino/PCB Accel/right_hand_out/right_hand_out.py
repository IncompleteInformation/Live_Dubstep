// include the SoftwareSerial library so you can use its functions:
#include <SoftwareSerial.h>

#define rxPin 2
#define txPin 3
#define thumb 4
#define middle 5
#define in_z A0
#define in_x A1

// set up a new serial port
SoftwareSerial mySerial =  SoftwareSerial(rxPin, txPin);


int cal_accel_z = 270;  //placeholder in case cal is impossible for some reason
int cal_accel_x = 270;  //placeholder in case cal is impossible for some reason
float accel_z;
float accel_x;
int ref_accel_z = -1;
int ref_accel_x = -1;
int accel_placeholder_z;
int accel_placeholder_x;
long ref_time_z;
long cur_time_z;
long elapsed_calibration_time_z;
long ref_time_x;
long cur_time_x;
long elapsed_calibration_time_x;
boolean thumb_was_low = false;
boolean middle_was_low = false;
int thumb_temp;
int middle_temp;


void setup(){
  pinMode(in_x,INPUT);
  pinMode(in_z,INPUT);
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);
  pinMode(thumb,INPUT);
  pinMode(middle,INPUT);
  //Serial.begin(9600); 
  mySerial.begin(9600);
}

int constant_calibrate_z(int accel){
  if (abs(accel-ref_accel_z)>3){
    ref_accel_z=accel;    //reset calibration attempt
    ref_time_z=millis();  //reset timer
    return -1;
  }
  else{
    cur_time_z=millis();
    elapsed_calibration_time_z = cur_time_z-ref_time_z;
    if (elapsed_calibration_time_z>1000){  //calibration takes 1 second
      ref_time_z=millis();  //don't reset a million times in a row
      ref_accel_z = accel;
      return accel;
    }
    
    return -1;
  }
}

int constant_calibrate_x(int accel){
  if (abs(accel-ref_accel_x)>3){
    ref_accel_x=accel;    //reset calibration attempt
    ref_time_x=millis();  //reset timer
    return -1;
  }
  else{
    cur_time_x=millis();
    elapsed_calibration_time_x = cur_time_x-ref_time_x;
    if (elapsed_calibration_time_x>1000){  //calibration takes 1 second
      ref_time_x=millis();  //don't reset a million times in a row
      ref_accel_x = accel;
      return accel;
    }
    
    return -1;
  }
}

int sanitize_z(float raw_accel){
  raw_accel-=cal_accel_z;
  raw_accel/=cal_accel_z;
  raw_accel*=63;
  raw_accel+=63;
  if (raw_accel>126){raw_accel=126;}  //leave room for x values
  return raw_accel;
}

int sanitize_x(float raw_accel){
  raw_accel-=cal_accel_x;
  raw_accel/=cal_accel_x;
  raw_accel*=63;
  raw_accel+=63;
  raw_accel+=127; //prevent confusion with z data
  if (raw_accel>253){raw_accel=253;}  //prevent ascii rollover
  return raw_accel;
}

void loop(){
  //acquire and process z accel
  accel_z = analogRead(in_z);
  accel_placeholder_z = constant_calibrate_z(accel_z);
  if (accel_placeholder_z!=-1){cal_accel_z=accel_placeholder_z;}
  accel_z = sanitize_z(float(accel_z));
  
  //acquire and process x accel
  accel_x = analogRead(in_x);
  accel_placeholder_x = constant_calibrate_x(accel_x);
  if (accel_placeholder_x!=-1){cal_accel_x=accel_placeholder_x;}
  accel_x = sanitize_x(float(accel_x));
  
  //send data out via Bluetooth
  mySerial.write(accel_z);  //a chr between 0 and 126
  mySerial.write(accel_x);  //a chr between 127 and 253

  thumb_temp = digitalRead(thumb);
  middle_temp = digitalRead(middle);
  if (thumb_temp == LOW){if (!thumb_was_low){thumb_was_low=true;mySerial.write(254);}}
  if (thumb_temp == HIGH){if (thumb_was_low){thumb_was_low=false;mySerial.write(254);}}
  if (middle_temp == LOW){if (!middle_was_low){middle_was_low=true;mySerial.write(255);}}
  if (middle_temp == HIGH){if (middle_was_low){middle_was_low=false;mySerial.write(255);}}
}
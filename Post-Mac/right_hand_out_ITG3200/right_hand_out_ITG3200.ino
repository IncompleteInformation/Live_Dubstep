//The Wire library is used for I2C communication
#include <Wire.h>

//This is a list of registers in the ITG-3200. Registers are parameters that determine how the sensor will behave, or they can hold data that represent the
//sensors current status.
//To learn more about the registers on the ITG-3200, download and read the datasheet.
char WHO_AM_I = 0x00;
char SMPLRT_DIV= 0x15;
char DLPF_FS = 0x16;
char GYRO_XOUT_H = 0x1D;
char GYRO_XOUT_L = 0x1E;
char GYRO_YOUT_H = 0x1F;
char GYRO_YOUT_L = 0x20;
char GYRO_ZOUT_H = 0x21;
char GYRO_ZOUT_L = 0x22;

//This is a list of settings that can be loaded into the registers.
//DLPF, Full Scale Register Bits
//FS_SEL must be set to 3 for proper operation
//Set DLPF_CFG to 3 for 1kHz Fint and 42 Hz Low Pass Filter
char DLPF_CFG_0 = (1<<0);
char DLPF_CFG_1 = (1<<1);
char DLPF_CFG_2 = (1<<2);
char DLPF_FS_SEL_0 = (1<<3);
char DLPF_FS_SEL_1 = (1<<4);

//I2C devices each have an address. The address is defined in the datasheet for the device. The ITG-3200 breakout board can have different address depending on how
//the jumper on top of the board is configured. By default, the jumper is connected to the VDD pin. When the jumper is connected to the VDD pin the I2C address
//is 0x69.
char itgAddress = 0x69;
// include the SoftwareSerial library so you can use its functions:
#include <SoftwareSerial.h>

#define rxPin   10
#define txPin   11
#define index   2
#define middle  3
#define ring    4
#define pinky   5

// set up a new serial port
SoftwareSerial mySerial =  SoftwareSerial(rxPin, txPin);

int cal_accel_x = 270;  //placeholder in case cal is impossible for some reason
int cal_accel_y = 270;  //placeholder in case cal is impossible for some reason
int cal_accel_z = 270;  //placeholder in case cal is impossible for some reason

float accel_x;
float accel_y;
float accel_z;

int ref_accel_x = -1;
int ref_accel_y = -1;
int ref_accel_z = -1;

int accel_placeholder_x;
int accel_placeholder_y;
int accel_placeholder_z;

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
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);
  
  pinMode(index,INPUT);
  pinMode(middle,INPUT);
  pinMode(ring,INPUT);
  pinMode(pinky,INPUT);
  
  mySerial.begin(9600);
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


////////////
//Calibration Routines
////////////
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

int constant_calibrate_y(int accel){
  if (abs(accel-ref_accel_y)>3){
    ref_accel_y=accel;    //reset calibration attempt
    ref_time_y=millis();  //reset timer
    return -1;
  }
  else{
    cur_time_y=millis();
    elapsed_calibration_time_y = cur_time_y-ref_time_y;
    if (elapsed_calibration_time_y>1000){  //calibration takes 1 second
      ref_time_y=millis();  //don't reset a million times in a row
      ref_accel_y = accel;
      return accel;
    }    
    return -1;
  }
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

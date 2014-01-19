

//The Wire library is used for I2C communication
#include <Wire.h>
//The ITG3200_Axis Library is used to manage gyro data from the ITG3200
#include <ITG3200_Axis.h>
//The Finger_Trigger library is designed for using the glove tips as buttons
#include <Finger_Trigger.h>

//This is a list of registers in the ITG-3200. Registers are parameters that determine how the sensor will behave, or they can hold data that represent the
//sensor's current status.
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

#define rxPin       8
#define txPin       9
#define index_pin   2
#define middle_pin  3
#define ring_pin    4
#define pinky_pin   5

// set up a new serial port
SoftwareSerial mySerial =  SoftwareSerial(rxPin, txPin);

Finger_Trigger index = Finger_Trigger(index_pin);
Finger_Trigger middle = Finger_Trigger(middle_pin);
Finger_Trigger ring = Finger_Trigger(ring_pin);
Finger_Trigger pinky = Finger_Trigger(pinky_pin);

ITG3200_Axis x_roll = ITG3200_Axis(10,8000,0);
ITG3200_Axis y_pitch = ITG3200_Axis(10,8000,0);
ITG3200_Axis z_yaw = ITG3200_Axis(10,8000,0);

void setup(){
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);
  
  pinMode(index_pin,INPUT_PULLUP);
  pinMode(middle_pin,INPUT_PULLUP);
  pinMode(ring_pin,INPUT_PULLUP);
  pinMode(pinky_pin,INPUT_PULLUP);
  
  mySerial.begin(9600);
  
  Wire.begin();
  
  //Read the WHO_AM_I register and print the result
  char id=0; 
  id = itgRead(itgAddress, 0x00);  
  Serial.print("ID: ");
  Serial.println(id, HEX);
  
  //Configure the gyroscope
  //Set the gyroscope scale for the outputs to +/-2000 degrees per second
  itgWrite(itgAddress, DLPF_FS, (DLPF_FS_SEL_0|DLPF_FS_SEL_1|DLPF_CFG_0));
  //Set the sample rate to 100 hz
  itgWrite(itgAddress, SMPLRT_DIV, 9);  
}


void loop(){
  //long roll = readX();
  //long pitch = readY();
  //long yaw = readZ();
  
  //process axis data
  //x_roll.constant_calibrate(roll);
  //y_pitch.constant_calibrate(pitch);
  //z_yaw.constant_calibrate(yaw);
  
  //roll = x_roll.sanitize(roll);
  //pitch = y_pitch.sanitize(pitch);
  //yaw = z_yaw.sanitize(yaw);
  //send data out via Bluetooth
  //mySerial.write(4+128);mySerial.write(roll);
  //mySerial.write(5+128);mySerial.write(pitch);
  //mySerial.write(6+128);mySerial.write(yaw);
  
  if (index.triggered()){
    mySerial.write(0+128);
  }
  if (middle.triggered()){
    mySerial.write(1+128);
  }
  if (ring.triggered()){
    mySerial.write(2+128);
  }
  if (pinky.triggered()){
    mySerial.write(3+128);
  }
}

//This function will write a value to a register on the itg-3200.
//Parameters:
//  char address: The I2C address of the sensor. For the ITG-3200 breakout the address is 0x69.
//  char registerAddress: The address of the register on the sensor that should be written to.
//  char data: The value to be written to the specified register.
void itgWrite(char address, char registerAddress, char data)
{
  //Initiate a communication sequence with the desired i2c device
  Wire.beginTransmission(address);
  //Tell the I2C address which register we are writing to
  Wire.write(registerAddress);
  //Send the value to write to the specified register
  Wire.write(data);
  //End the communication sequence
  Wire.endTransmission();
}

//This function will read the data from a specified register on the ITG-3200 and return the value.
//Parameters:
//  char address: The I2C address of the sensor. For the ITG-3200 breakout the address is 0x69.
//  char registerAddress: The address of the register on the sensor that should be read
//Return:
//  unsigned char: The value currently residing in the specified register
unsigned char itgRead(char address, char registerAddress)
{
  //This variable will hold the contents read from the i2c device.
  unsigned char data=0;
  
  //Send the register address to be read.
  Wire.beginTransmission(address);
  //Send the Register Address
  Wire.write(registerAddress);
  //End the communication sequence.
  Wire.endTransmission();
  
  //Ask the I2C device for data
  Wire.beginTransmission(address);
  Wire.requestFrom(address, 1);
  
  //Wait for a response from the I2C device
  if(Wire.available()){
    //Save the data sent from the I2C device
    data = Wire.read();
  }
  
  //End the communication sequence.
  Wire.endTransmission();
  
  //Return the data read during the operation
  return data;
}

//This function is used to read the X-Axis rate of the gyroscope. The function returns the ADC value from the Gyroscope
//NOTE: This value is NOT in degrees per second. 
//Usage: int xRate = readX();
int readX(void)
{
  int data=0;
  data = itgRead(itgAddress, GYRO_XOUT_H)<<8;
  data |= itgRead(itgAddress, GYRO_XOUT_L);  
  
  return data;
}

//This function is used to read the Y-Axis rate of the gyroscope. The function returns the ADC value from the Gyroscope
//NOTE: This value is NOT in degrees per second. 
//Usage: int yRate = readY();
int readY(void)
{
  int data=0;
  data = itgRead(itgAddress, GYRO_YOUT_H)<<8;
  data |= itgRead(itgAddress, GYRO_YOUT_L);  
  
  return data;
}

//This function is used to read the Z-Axis rate of the gyroscope. The function returns the ADC value from the Gyroscope
//NOTE: This value is NOT in degrees per second. 
//Usage: int zRate = readZ();
int readZ(void)
{
  int data=0;
  data = itgRead(itgAddress, GYRO_ZOUT_H)<<8;
  data |= itgRead(itgAddress, GYRO_ZOUT_L);  
  
  return data;
}

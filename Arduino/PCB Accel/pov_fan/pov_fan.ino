#include <SoftwareSerial.h>

SoftwareSerial mySerial(4, A6); // RX, TX Hopefully the unusable A6 will satisfy the parameters. I don't have space for RX

//Init globals
uint8_t RED = 0;
uint8_t GREEN = 0;
uint8_t BLUE = 0;
uint8_t RADIUS = 0;

void setup(){
  DDRB = 0b00111111; //two LEDs
  DDRC = 0b00111111; //cathodes
  DDRD = 0b11101010; //one LED, BT, HALL
  mySerial.begin(9600);
  //Serial.begin(9600);
}
void loop(){
  uint8_t LED = 0;
  
  if (mySerial.available()>0){
    byte datum = mySerial.read();
    byte type  = datum>>6;
    byte data  = datum & 0b00111111;

    switch (type) {
      case 0:
        RED = data;
        break;
      case 1:
        GREEN = data;
        break;
      case 2:
        BLUE = data;
        break;
      case 3:
        RADIUS = data/3;
    }
  }
  RGBwrite(0,RED,GREEN,BLUE);
  RGBwrite(1,RED,GREEN,BLUE);
  RGBwrite(2,RED,GREEN,BLUE);
  RGBwrite(3,RED,GREEN,BLUE);
  RGBwrite(4,RED,GREEN,BLUE);
  RGBwrite(5,RED,GREEN,BLUE);
  RGBwrite(6,RED,GREEN,BLUE);
  RGBwrite(7,RED,GREEN,BLUE);
  RGBwrite(8,RED,GREEN,BLUE);
  RGBwrite(9,RED,GREEN,BLUE);
  RGBwrite(10,RED,GREEN,BLUE);
  RGBwrite(11,RED,GREEN,BLUE);
  RGBwrite(12,RED,GREEN,BLUE);
  RGBwrite(13,RED,GREEN,BLUE);
  RGBwrite(14,RED,GREEN,BLUE);
  RGBwrite(15,RED,GREEN,BLUE);
  RGBwrite(16,RED,GREEN,BLUE);
  RGBwrite(17,RED,GREEN,BLUE);
  RGBwrite(18,RED,GREEN,BLUE);
  RGBwrite(19,RED,GREEN,BLUE);
  RGBwrite(20,RED,GREEN,BLUE);
  RGBwrite(19,RED,GREEN,BLUE);
  RGBwrite(18,RED,GREEN,BLUE);
  RGBwrite(17,RED,GREEN,BLUE);
  RGBwrite(16,RED,GREEN,BLUE);
  RGBwrite(15,RED,GREEN,BLUE);
  RGBwrite(14,RED,GREEN,BLUE);
  RGBwrite(13,RED,GREEN,BLUE);
  RGBwrite(12,RED,GREEN,BLUE);
  RGBwrite(11,RED,GREEN,BLUE);
  RGBwrite(10,RED,GREEN,BLUE);
  RGBwrite(9,RED,GREEN,BLUE);
  RGBwrite(8,RED,GREEN,BLUE);
  RGBwrite(7,RED,GREEN,BLUE);
  RGBwrite(6,RED,GREEN,BLUE);
  RGBwrite(5,RED,GREEN,BLUE);
  RGBwrite(4,RED,GREEN,BLUE);
  RGBwrite(3,RED,GREEN,BLUE);
  RGBwrite(2,RED,GREEN,BLUE);
  RGBwrite(1,RED,GREEN,BLUE);
  RGBwrite(0,RED,GREEN,BLUE);
}



void RGBwrite(uint8_t LED, uint8_t R, uint8_t G, uint8_t B)
{
  
//  uint8_t R = RED; //create temps so globals are not destroyed
//  uint8_t G = GREEN;
//  uint8_t B = BLUE;
  if (RADIUS<=LED){
    R=0;
    G=0;
    B=0;
  }
  uint8_t cathode = LED/3;
  uint8_t cycles = 0;
  uint8_t led_state = 0b00000000;
  uint8_t reg_location = LED%3;
  
  ///ARM CATHODE
  //if (LED%3==0){
    if (cathode==0){
      PORTD &= ~0b00001000;
    }else{
      PORTC &= ~(1<<(6-cathode)); //hopfully turns the 1 to 6 indexing into 5 to zero bitshift
    }  
  //}
  if (reg_location == 0)
  {
    //0bRGB0 0000 on PORTD
    while (cycles != 63)
    {
      //handle R
      if (R > 0){
        led_state |= 0b10000000;
        R -= 1; 
      }else{
        led_state &= ~0b10000000;
      }
      //handle G
      if (G > 0){
        led_state |= 0b01000000;
        G -= 1; 
      }else{
        led_state &= ~0b01000000;
      }
      //handle B
      if (B > 0){
        led_state |= 0b00100000;
        B -= 1; 
      }else{
        led_state &= ~0b00100000;
      }
      PORTD &= ~0b11100000;
      PORTD |= led_state;
      cycles += 1;
    }
    //if (LED%3==2){
      PORTD &= 0b00011111; //turn off led to make "room" for current to other LEDs
    //}
  }
  
  
  if (reg_location == 1)
  {
    //0b00RG B000 on PORTB
    while (cycles != 63)
    {
      //handle R
      if (R > 0){
        led_state |= 0b00100000;
        R -= 1; 
      }else{
        led_state &= ~0b00100000;
      }
      //handle G
      if (G > 0){
        led_state |= 0b00010000;
        G -= 1; 
      }else{
        led_state &= ~0b00010000;
      }
      //handle B
      if (B > 0){
        led_state |= 0b00001000;
        B -= 1; 
      }else{
        led_state &= ~0b00001000;
      }
      PORTB &= ~0b00111000;
      PORTB |= led_state;
      cycles += 1;
    }
    //if (LED%3==2){
      PORTB &= ~0b00111000;  //turn off led to make "room" for current to other LEDs
    //}
  }


  if (reg_location == 2)
  {
    //0b0000 0RGB on PORTB
    while (cycles != 63)
    {
      //handle R
      if (R > 0){
        led_state |= 0b00000100;
        R -= 1; 
      }else{
        led_state &= ~0b00000100;
      }
      //handle G
      if (G > 0){
        led_state |= 0b00000010;
        G -= 1; 
      }else{
        led_state &= ~0b00000010;
      }
      //handle B
      if (B > 0){
        led_state |= 0b00000001;
        B -= 1; 
      }else{
        led_state &= ~0b00000001;
      }
      PORTB &= ~0b00000111;
      PORTB |= led_state;   
      cycles += 1;
    }
    //if (LED%3==2){
      PORTB &=  0b11111000; //turn off led to make "room" for current to other LEDs
    //}
  }
  
  ///DISARM CATHODE
  //if (LED%3==2){
    if (cathode==0){
      PORTD |= 0b00001000;
    }else{
      PORTC |= (1<<(6-cathode)); //hopefully turns the 1 to 6 indexing into 5 to zero bitshift
    }
  //}
//  }
  
}

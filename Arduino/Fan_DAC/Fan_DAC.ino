#include <SoftwareSerial.h>

SoftwareSerial mySerial(2,A7); //RX, (TX not in use, A7 useless to me anyway)

//Globals
uint8_t RED    = 0;
uint8_t GREEN  = 0;
uint8_t BLUE   = 0;
uint8_t RADIUS = 0;

unsigned long prevTime;

void setup()
{
  DDRB  |=  0b00011111;  //RED, bit 2 = BT TX
  DDRC  |=  0b00011111;  //GRN, 
  DDRD  |=  0b11111000;  //BLU,
  
  pinMode(2, INPUT);
  
  PORTB &= ~0b00011111;  //RESET
  PORTC &= ~0b00011111;  //RESET
  PORTD &= ~0b11111000;  //RESET
  
  prevTime = millis();
  mySerial.begin(9600);
}

void loop()
{
  if (mySerial.available()>0){
    prevTime = millis();
    byte datum = mySerial.read();
    byte type  = datum>>6;
    byte data  = datum & 0b00111111;

    switch (type) {
      case 0:
        RED = data/3;
        break;
      case 1:
        GREEN = data/3;
        break;
      case 2:
        BLUE = data/3;
        break;
      case 3:
        RED = GREEN = BLUE = data/3;
        break;
      default:
        break;
    }
  }
  if (millis() - prevTime > 15000) { color_sweep(10); }
  else { RGBwrite(RADIUS,RED,GREEN,BLUE); }
}

void reset_all(){
  PORTB &= ~0b00011111;  //RESET
  PORTC &= ~0b00011111;  //RESET
  PORTD &= ~0b11111000;  //RESET
}

void reset_red(){PORTB &= ~0b00011111;}
void reset_green(){PORTC &= ~0b00011111;}
void reset_blue(){PORTD &= ~0b11111000;}

void run_red(int ms){
  uint8_t out = 0b00000000;
  while (out < 23){
    PORTB &= ~0b00011111;
    PORTB |= out;
    out+=1;
    delay(ms);
  }
}

void run_green(int ms){
  uint8_t out = 0b00000000;
  while (out < 23){
    PORTC &= ~0b00011111;
    PORTC |= out;
    out+=1;
    delay(ms);
  }
}

void run_blue(int ms){
  uint8_t out = 0b00000000;
  while (out < (23<<3)){
    PORTD &= ~0b11111000;
    PORTD |= out;
    out+=(1<<3);
    delay(ms);
  }
}

void red_lights(uint8_t red, uint8_t radius){
  if (red>22) red = 22;
  uint8_t out = red;
  PORTB &= ~0b00011111;
  PORTB |= out;
}

void green_lights(uint8_t green, uint8_t radius){
  if (green > 22) green = 22;
  uint8_t out = green;
  PORTC &= ~0b00011111;
  PORTC |= out;
}

void blue_lights(uint8_t blue, uint8_t radius){
  if (blue > 22) blue = 22;
  uint8_t out = blue<<3;
  PORTD &= ~0b11111000;
  PORTD |= out;
}

void RGBwrite(uint8_t radius, uint8_t red, uint8_t green, uint8_t blue){
  red_lights(red, radius);
  green_lights(green, radius);
  blue_lights(blue, radius);
}

void color_sweep(int ms){
  run_red(ms);
  reset_all();
  run_green(ms);
  reset_all();
  run_blue(ms);
  reset_all();
  run_red(ms);
  run_green(ms);
  reset_all();
  run_red(ms);
  run_blue(ms);
  reset_all();
  run_green(ms);
  run_blue(ms);
  reset_all();
  run_red(ms);
  run_green(ms);
  run_blue(ms);
  delay(ms*10);
}

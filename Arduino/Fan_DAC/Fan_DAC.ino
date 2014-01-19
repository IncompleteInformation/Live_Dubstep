#include <SoftwareSerial.h>

SoftwareSerial mySerial(13,A7); //RX, (TX not in use, A7 useless to me anyway)

void setup()
{
  DDRB  |=  0b00011111;  //RED, bit 2 = BT TX
  DDRC  |=  0b00011111;  //GRN, 
  DDRD  |=  0b11111000;  //BLU,
  
  PORTB &= ~0b00011111;  //RESET
  PORTC &= ~0b00011111;  //RESET
  PORTD &= ~0b11111000;  //RESET
  
  mySerial.begin(9600);
}

void loop()
{

  color_sweep(100);
  color_sweep(50);
  color_sweep(10);
  color_sweep(5);
  for (int i = 0; i<100; i++){
    color_sweep(1);
  }
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
  while (out < (23<<3)){
    PORTB &= ~0b00011111;
    PORTB |= out;
    out+=1;
    delay(ms);
  }
}

void run_green(int ms){
  uint8_t out = 0b00000000;
  while (out < 23){
    PORTD &= ~0b00011111;
    PORTD |= out;
    out+=1;
    delay(ms);
  }
}

void run_blue(int ms){
  uint8_t out = 0b00000000;
  while (out < 23){
    PORTD &= ~0b11111000;
    PORTD |= out;
    out+=(1<<3);
    delay(ms);
  }
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

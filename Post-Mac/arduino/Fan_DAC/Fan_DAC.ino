#include <SoftwareSerial.h>

SoftwareSerial mySerial(2,A7); //RX, (TX not in use, A7 useless to me anyway)

long prev_ser_time;

//Init globals
uint8_t RED = 0;
uint8_t GREEN = 0;
uint8_t BLUE = 0;

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
  if (mySerial.available()>0){
    prev_ser_time = millis();
    
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
        RED = 0;
        GREEN = 0;
        BLUE = 0;
      }
    
    write_red();
    write_green();
    write_blue();
    
    
  } else if (millis() - prev_ser_time < 10000)
  {
    //DO NOTHING 
  } else {
    color_sweep(50);
    color_sweep(10);
    color_sweep(5);
    for (int i = 0; i<10; i++){
      color_sweep(1);
    }  
    for (int i = 0; i<1000; i++){
      color_sweep(0);
    }  
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

void write_red(){
  PORTB &= ~0b00011111;
  PORTB |= RED;
}

void write_green(){
  PORTC &= ~0b00011111; //RESET GREEN
  PORTC |= GREEN;
}

void write_blue(){
  PORTD &= ~0b11111000;
  PORTD |= (BLUE<<3);
}


void run_red(int ms){
  uint8_t out = 0b00000000;
  while (out < 23 + 5){
    PORTB &= ~0b00011111;
    PORTB |= out;
    out+= 1;
    delay(ms);
  }
}

void run_green(int ms){
  uint8_t out = 0b00000000;
  while (out < 23 + 5){
    PORTC &= ~0b00011111;
    PORTC |= out;
    out+=1;
    delay(ms);
  }
}

void run_blue(int ms){
  uint8_t out = 0b00000000;
  while (out < ((23+5)<<3)){
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

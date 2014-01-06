//ITG3200_Axis.cpp

#include "Arduino.h"
#include "ITG3200_Axis.h"

ITG3200_Axis::ITG3200_Axis(int n_t, int ITG_m, int c_a) //constructor
{
  noise_thresh = n_t;
  ITG3200_max = ITG_m;
  cal_accel = c_a;
}

long ITG3200_Axis::sanitize(long raw_accel){
  raw_accel -= cal_accel;
  raw_accel = abs(raw_accel);
  if (raw_accel > ITG3200_max){
    raw_accel = ITG3200_max;
  }
  raw_accel *= 128;
  raw_accel /= ITG3200_max;
  return raw_accel; //should now be between 0 and 127

}

void ITG3200_Axis::constant_calibrate(int accel){
  if (abs(accel-ref_accel)>noise_thresh){
    ref_accel=accel;    //reset calibration attempt
    ref_time=millis();  //reset timer
  }
  else{
    cur_time=millis();
    elapsed_calibration_time = cur_time-ref_time;
    if (elapsed_calibration_time>1000){  //calibration takes 1 second
      ref_time=millis();  //don't reset a million times in a row
      cal_accel = accel;
    }
  }
}
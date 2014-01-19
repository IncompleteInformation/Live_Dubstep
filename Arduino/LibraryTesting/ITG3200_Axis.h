//ITG3200_Axis.h

#ifndef ITG3200_Axis_h
#define ITG3200_Axis_h

class ITG3200_Axis{
  private:
    int ref_accel;
    long ref_time;
    long cur_time;
    long elapsed_calibration_time;
    int noise_thresh;
    int ITG3200_max;
    int cal_accel;
  public:
    ITG3200_Axis(int n_t, int ITG_m, int c_a); //constructor
    long sanitize(long); //takes an accel data off the ITG3200 chip
    void constant_calibrate(int);

};

#endif
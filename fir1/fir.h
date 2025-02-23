#define MAX_N 1000   // Number of samples
#define L 10         // FIR length
#include <ap_int.h> 

typedef ap_fixed<17,2> din_t;  // Feel free to change
typedef ap_fixed<19,3> dout_t; // Feel free to change

//typedef ap_fixed<40,2> din_t;  // Feel free to change
//typedef ap_fixed<40,3> dout_t; // Feel free to change

//typedef float din_t;  // Feel free to change
//typedef float dout_t; // Feel free to change

void top(float *in, float *out, int N);

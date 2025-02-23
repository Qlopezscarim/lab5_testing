#include "fir.h"

const din_t a[L]={0.5, -0.4, 0.3, -0.2, 0.05, 0.3, -0.3, 0.2, 0.1, -0.1};

void fir(din_t *in, dout_t *out, int N) {

  din_t reg[L] = {};
#pragma HLS array_partition variable=reg type=complete

  sample_loop: for (int n=0; n<N; n++) {
#pragma HLS loop_tripcount max=MAX_N
    shift_loop: for (int k=L-1; k>0; k--) {
      reg[k] = reg[k-1];
    }
    // Read in new sample from in
    reg[0] = in[n];

    dout_t y = 0.0;
    fir_loop: for (int k=0; k<L; k++) {
      y += a[k]*reg[k];
    }

    // Write to out
    out[n] = y;
  }
}

// Add any functions you may see fit

void top(float *in, float *out, int N) {
#pragma HLS interface mode=m_axi port=in depth=MAX_N 
#pragma HLS interface mode=m_axi port=out depth=MAX_N

// Complete the body of this top-level function by calling
// fir(din_t *in, dout_t *out, int N) to perform filtering
  
}

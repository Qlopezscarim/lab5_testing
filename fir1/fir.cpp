#include "fir.h"
#include <assert.h>
//#include <iostream>

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
    //#pragma HLS array_partition variable=in type=complete


    dout_t y = 0.0;
    #pragma HLS bind_storage variable=y type=fifo

    fir_loop: for (int k=0; k<L; k++) {
        #pragma HLS bind_op variable=y op=mul impl=fabric latency=0
        #pragma HLS bind_op variable=y op=add impl=fabric latency=0
        //#pragma HLS unroll
      y += a[k]*reg[k];
    }

    // Write to out
    out[n] = y;
    //#pragma HLS array_partition variable=out type=complete

  }
}

// Add any functions you may see fit
void read_task(float* in, din_t* input,int N)
{
    assert(N%8==0);
    for(int i=0; i < N; i++)
    {
    #pragma HLS loop_tripcount max=MAX_N
        //input[i] = static_cast<din_t>(in[i]);
        input[i] = in[i];
    }
}

void write_task(dout_t* output,float* out, int N)
{
    assert(N%8==0);
    for(int i=0; i < N; i++)
    {
    #pragma HLS loop_tripcount max=MAX_N
        //out[i] = static_cast<float>(output[i]);
        out[i] = output[i];
    }
}

void top(float *in, float *out, int N) {
#pragma HLS interface mode=m_axi port=in depth=MAX_N 
#pragma HLS interface mode=m_axi port=out depth=MAX_N

// Complete the body of this top-level function by calling
// fir(din_t *in, dout_t *out, int N) to perform filtering
    din_t input[1000];
    dout_t output[1000];
    #pragma HLS DATAFLOW
    read_task(in,input,N);
    //din_t* input = reinterpret_cast<din_t*>(in);;
    //dout_t* output = reinterpret_cast<dout_t*>(out);
    //std::cout << "These are my important values" << "\n" << out[500];
    //std::cout << "\n" << output[500] << "\n";
    fir(input,output,N);
    write_task(output,out,N);
}
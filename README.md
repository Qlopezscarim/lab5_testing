# EEE4511C Lab 5: Global Memory Access

## Goals:
- Learn how to write kernel code in the LCS pattern in order to optimize global memory access.
- Experiment with global memory access designs to meet different performance and resource goals. 
- Refresh the material about task-level optimization discussed in class and practiced in Lab 2.

## What you need to do:
***All performance requirements, such as latency, slack, and PL resource usage below refer to the top-level function of the DSP kernel. Slack and PL resource usage are measured from the reports generated in the synthesis step. Latency is measured from the reports generated in the C/RTL co-simulation step. The provided testbench code should not be modified.***

1. LCS with arrays:
   - Create a new HLS component as done in Lab 2. Name this new HLS component `fir1`. 
   - Copy the following source files from the [`src`](./src) directory of this repo to the HLS component `fir1`:
     - [`fir.cpp`](./src/fir.cpp) = HLS source code
     - [`fir_test.cpp`](./src/fir_test.cpp) = Test bench code
     - [`fir.h`](./src/fir.h) = Common header file
   - Inside `fir.cpp` are a function `fir(din_t *in, dout_t *out, int N)` that implements an `L`-length FIR filter and a top-level function `top(float *in, float *out, int N)`. The idea is to implement a DSP kernel that loads an array of samples of type `float` from the global memory, filters the samples, and then store the filtered samples back to the global memory as an array of `float`s. The fucntion `fir()` should be called in the body of `top()` to perform filtering. The testbench code is given in `fir_test.cpp`, which should not be changed.
   - The code in `top()` is incomplete. Complete the code in `top()` to implement the DSP kernel. Your design must satisfy the following coding restrictions and performance requirements:
      - The argument structure of `fir()` should not be modified. That is, both the input and output arguments of `fir()` should remain pointers to arrays of the respective types. You are however welcome to change the data types of both the input and output arguments by say modifying the `typedef` statements in the header file `fir.h`. You may also modify the body of `fir()` as you see fit.
      - The arguments of the top-level function `top()` should not be changed. That is, the input and output should be pointers to `float` arrays.
      - The RTL design synthesized by Vitis HLS should:
         - use no DSP slices,
         - generate an `m_axi` interface with port bit-width no less than 256 bits,
         - use no more than 33 blocks of BRAM or URAM,
         - use no more than 4230 FFs and 8300 LUTs,
         - achieve a latency of 1200 clock cycles or less,
         - result in no negative slack reported in the synthesis step,
         - pass the 3 tests performed by the testbench in both C simulation and C/RTL cosimulation,
        
         for the setting of `MAX_N=1000` and `L=10` defined in `fir.h`.
       
2. Implementation that uses fewer PL resource: 
   - Create a new HLS component named `fir2`, and copy the source files in your design in part 1 to `fir2`. **Do not rename the source files**.
   - Modify your design in part 1 to achieve a new RTL design that should:
     - use no DSP slices,
     - use no more than 11 blocks of BRAM or URAM,
     - use no more than 3330 FFs and 7800 LUTs,
     - achieve a latency no higher than that you achieved in part 1,
     - result in no negative slack reported in the systhesis step,
     - pass the 3 tests performed by the testbench in both C simulation and C/RTL cosimulation,

     for the setting of `MAX_N=1000` and `L=10` defined in `fir.h`.
   
   **Hint**: Widening the port bit-width of the `m_axi` interface uses more RAM and CLB resources.
   
3. Implementation that uses even fewer PL resource:
   - Create a new HLS component named `fir3`, and copy the source files in your design in part 2 to `fir3`. **Do not rename the source files**.
   - In this part, you'll need to change the argument structure of the function `fir()` to `fir(hls::stream<din_t> &in, hls::stream<dout_t> &out, int N)`. That is, to use streams, rather than arrays, for the input and output of `fir()`. You'll need to change the body of `fir()` as well.
   - Modify your design in part 2 to achieve a new RTL design that should:
     - use no DSP slices,
     - use no more than 8 blocks of BRAM or URAM,
     - use no more than 3200 FFs and 7800 LUTs,
     - achieve a latency no higher than that you achieved in part 2,
     - result in no negative slack reported in the systhesis step,
     - pass the 3 tests performed by the testbench in both C simulation and C/RTL cosimulation,

     for the setting of `MAX_N=1000` and `L=10` defined in `fir.h`.

4. Submit lab results to GitHub repo:
   - For this lab, you need to submit the following files in:
     - `fir1/fir.cpp`, `fir1/fir.h`, `fir1/fir_test.cpp` (`fir1` source files)
     - `fir1/fir1/` (`fir1` workflow results)
     - `fir2/fir.cpp`, `fir2/fir.h`, `fir2/fir_test.cpp` (`fir2` source files)
     - `fir2/fir2/` (`fir2` workflow results)
     - `fir3/fir.cpp`, `fir3/fir.h`, `fir3/fir_test.cpp` (`fir3` source files)
     - `fir3/fir3/` (`fir3` workflow results)





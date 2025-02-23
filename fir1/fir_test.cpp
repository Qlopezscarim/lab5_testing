#include <iostream>
#include <math.h>
#include "fir.h"

#define ERR_TOL 1e-4
#define N MAX_N

const float a[L]={0.5, -0.4, 0.3, -0.2, 0.05, 0.3, -0.3, 0.2, 0.1, -0.1};

int main() {

  int retval = 0;

  float x[N], y[N];
  float y_golden[N];
    
  // Bench test thrice
  for (int iter = 0; iter < 3; iter++) {
    // Generate input
    for (int n=0; n<N; n++) {
      x[n] = 0.5*(iter+1)*cos((0.25*(iter+1)*M_PI*n));
    }
    //Generate golden output
    for (int n=0; n<N; n++) {
      y_golden[n] = 0.0;
      for (int k=0; k<L; k++) {
        if (n >= k)
          y_golden[n] += a[k]*x[n-k];
      }
    }

    // Execute DUT
    top(x, y, N);

    // Check for output mismatch
    float maxerr = 0.0;
    for (int n=0; n<N; n++) {
      float err = abs(y_golden[n]-y[n]);
      if (err > maxerr)
        maxerr = err;  
    }
    if (maxerr > ERR_TOL) {
      retval = 1;
      std::cout << "Test " << iter << " failed:" << std::endl;
      std::cout << "Max ABS error in y[n] = " << maxerr << " > " << "error tolerence of " << ERR_TOL << std::endl;
    } else {
      std::cout << "Test " << iter << " checked:" << std::endl;
      std::cout << "Max ABS error in y[n] = " << maxerr << " <= " << "error tolerence of " << ERR_TOL << std::endl;
    }

  }
  // Return 0 if the test passed
  return retval;
}

#include <stdio.h>
#include <time.h>

int fib(int n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fib(n-2) + fib(n-1);
  }
}

int main(void) {
  double startTime = (double)clock()/CLOCKS_PER_SEC;

  /* Do work */
  fib(30);

  double endTime = (double)clock()/CLOCKS_PER_SEC;

  double timeElapsed = endTime - startTime;
  printf("%f \n", timeElapsed);
  return 0;
}

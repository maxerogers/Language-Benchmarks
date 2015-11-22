//Max Rogers
//fib.cc
#include <iostream>

int fib(int n) {
  if (n <= 0) {
    return 0;
  } else if (n <= 2) {
    return 1;
  } else {
    return fib(n-2) + fib(n-1);
  }
}

int main(int argc, char *argv[]) {
  double startTime = (double)clock()/CLOCKS_PER_SEC;
  int n = 30;

  if (argc > 1) {
    n = std::stoi(argv[1]);
  }
  int x = fib(n);
  double endTime = (double)clock()/CLOCKS_PER_SEC;
  double timeElapsed = endTime - startTime;
  printf("C++\tFibonacci:\t%d\tExecTime: %.2Es \tn:%d\n", x, timeElapsed, n);
  return 0;
}

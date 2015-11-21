//Max Rogers
//fib.cc
#include <iostream>

int fib(int n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fib(n-2) + fib(n-1);
  }
}

int main() {
  double startTime = (double)clock()/CLOCKS_PER_SEC;
  std::cout << "Fibonacci (30): " << fib(30) << std::endl;
  double endTime = (double)clock()/CLOCKS_PER_SEC;
  double timeElapsed = endTime - startTime;
  std::cout << "Time elapsed: " << timeElapsed << std::endl;
  return 0;
}

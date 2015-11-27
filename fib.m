//Max Rogers
//Objective-C Recusive Fibonacci C-Style
//to build:
//clang fib.m -lobjc -framework Foundation

#import <Foundation/Foundation.h>

int fib(int n) {
  if (n <= 0) { return 0; }
  else if (n <= 2) { return 1;}
  else { return fib(n-2) + fib(n-1); }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      int n = 30;

      if (argc > 1) {
        n = atoi(argv[1]);
      }

      double startTime = (double)clock()/CLOCKS_PER_SEC;
      int x = fib(n);
      double endTime = (double)clock()/CLOCKS_PER_SEC;
      double timeElapsed = endTime - startTime;
      printf("ObjC\tFibonacci:\t%d\tExecTime: %.2Es\tn:%d",x,timeElapsed,n);
    }
    return 0;
}

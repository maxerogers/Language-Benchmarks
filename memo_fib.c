#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int *memo;

int fib(int n) {
  // printf("%d\n",n);
  // if (n > sizeof(memo)/sizeof(memo[0])) {
  //   int new_memo[n];
  //   for(int i=0;i<sizeof(memo)/sizeof(memo[0]);i++) {
  //     new_memo[i] = memo[i];
  //   }
  //   memo = new_memo;
  // }
  // if (!memo[n]) {
  //   printf("%d\n",memo[n]);
  //   return memo[n];
  // }
  if (n <= 0) {
    return 0;
  } else if (n <= 2) {
    return 1;
  } else {
    return fib(n-2) + fib(n-1);
  }
}

int main(int argc, char *argv[])  {
  double startTime = (double)clock()/CLOCKS_PER_SEC;
  int n = 30;

  if (argc > 1) {
    n = atoi(argv[1]);
  }
  // int initial_array[1] = {0};
  // memo = initial_array;
  int x = fib(n);
  double endTime = (double)clock()/CLOCKS_PER_SEC;
  double timeElapsed = endTime - startTime;

  printf("C\tMemo Fibonacci:\t%d\tExecTime: %.2Es \tn:%d\n", x, timeElapsed, n);
  return 0;
}

//future right own map hashing structure in C

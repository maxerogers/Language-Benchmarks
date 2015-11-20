#include <stdio.h>
#include <time.h>

int *memo;

int fib(int n) {
  if (n > sizeof(memo)/sizeof(memo[0])) {
    int new_memo[n];
    for(int i=0;i<sizeof(memo)/sizeof(memo[0]);i++) {
      new_memo[i] = memo[i];
    }
    memo = new_memo;
  }
  if (!memo[n]) {
    return memo[n];
  }
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    memo[n] = 1;
    return 1;
  } else {
    memo[n] = fib(n-2) + fib(n-1);
    return memo[n];
  }
}

int main(void) {
  double start_time = (double)clock()/CLOCKS_PER_SEC;

  /* Do work */
  int initial_array[1] = {0};
  memo = initial_array;
  fib(30);

  double end_time = (double)clock()/CLOCKS_PER_SEC;

  double time_elapsed = end_time - start_time;
  printf("%f \n", time_elapsed);
  return 0;
}

//future right own map hashing structure in C

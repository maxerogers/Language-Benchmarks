//Max Rogers
//memo_fib.cc
#include <iostream>
#include <map>

std::map<int,int> memo;
std::map<int,int>::iterator it;

int fib(int n) {
  it = memo.find(n);
  if (it != memo.end()) {
    return memo[n];
  }
  if (n <= 0) {
    return memo[n];
  } else if (n <= 2) {
    memo.insert ( std::pair<int,int>(n,1) );
    return memo[n];
  } else {
    memo.insert ( std::pair<int,int>(n,fib(n-2) + fib(n-1)) );
    return memo[n];
  }
}

int main(int argc, char *argv[]) {
  double startTime = (double)clock()/CLOCKS_PER_SEC;
  memo.insert ( std::pair<int,int>(0,0) );
  int n = 30;

  if (argc > 1) {
    n = std::stoi(argv[1]);
  }
  int x = fib(n);
  double endTime = (double)clock()/CLOCKS_PER_SEC;
  double timeElapsed = endTime - startTime;
  printf("C++\tMemo Fibonacci:\t%d\tExecTime: %.2Es \tn:%d\n", x, timeElapsed, n);
  return 0;
}

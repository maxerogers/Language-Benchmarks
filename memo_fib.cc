//Max Rogers
//memo_fib.cc
#include <iostream>
#include <map>

// bool fncomp (int lhs, int rhs) {return lhs<rhs;}
//
// struct classcomp {
//   bool operator() (const int& lhs, const int& rhs) const
//   {return lhs<rhs;}
// };

std::map<int,int> memo;
std::map<int,int>::iterator it;

int fib(int n) {
  it = memo.find(n);
  if (it != memo.end()) {
    return memo[n];
  }
  if (n <= 0) {
    return memo[0];
  } else if (n == 1) {
    memo.insert ( std::pair<int,int>(1,1) );
    return memo[1];
  } else {
    memo.insert ( std::pair<int,int>(n,fib(n-2) + fib(n-1)) );
    return memo[n];
  }
}

int main() {
  double startTime = (double)clock()/CLOCKS_PER_SEC;
  memo.insert ( std::pair<int,int>(0,0) );
  std::cout << "Fibonacci (30): " << fib(30) << std::endl;
  double endTime = (double)clock()/CLOCKS_PER_SEC;
  double timeElapsed = endTime - startTime;
  std::cout << "Time elapsed: " << timeElapsed << std::endl;
  return 0;
}

var memo = [];

var fib = function(n) {
  if (memo[n]) {
    return memo[n];
  } else if (n <= 0) {
    memo[n] = 0
    return 0;
  } else if (n == 1) {
    memo[n] = 1
    return 1;
  } else {
    memo[n] = fib(n-2) + fib(n-1)
    return memo[n];
  }
}

var startDate = new Date();
var startTime = startDate.getTime();

console.log(fib(40));

var endDate = new Date();
var endTime = endDate.getTime();
console.log((endTime-startTime) / 1000);

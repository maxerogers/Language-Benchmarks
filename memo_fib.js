var memo = [];

var fib = function(n) {
  if (memo[n]) {
    return memo[n];
  } else if (n <= 0) {
    memo[n] = 0
    return 0;
  } else if (n <= 2) {
    memo[n] = 1
    return 1;
  } else {
    memo[n] = fib(n-2) + fib(n-1)
    return memo[n];
  }
}

var startDate = new Date();
var startTime = startDate.getTime();

var n = 30;
if (n) {
  n = process.argv[2]
}
var x = fib(n)

var endDate = new Date();
var endTime = endDate.getTime();
console.log("JS\tMemo Fibonacci:\t"+x+"\tExecTime: "+(endTime-startTime) / 1000+"s\tn:"+n);

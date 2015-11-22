
var fib = function(n) {
  if (n <= 0) {
    return 0;
  } else if (n <= 2) {
    return 1;
  } else {
    return fib(n-2) + fib(n-1);
  }
}

var startDate = new Date();
var startTime = startDate.getTime();

console.log(fib(40));

var endDate = new Date();
var endTime = endDate.getTime();
console.log((endTime-startTime) / 1000);

//current best time 0.029 seconds

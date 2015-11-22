
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

var n = 30;
if (n) {
  n = process.argv[2]
}
var x = fib(n)

var endDate = new Date();
var endTime = endDate.getTime();
console.log("JAVASCRIPT\tFibonacci:\t"+x+"\tExecTime: "+(endTime-startTime) / 1000+"s\tn:"+n);

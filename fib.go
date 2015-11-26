package main

import "fmt"
import "time"
import "os"
import "strconv"
import "math"

func Fib(n int) int {
  if n <= 0 {
    return 0
  }
  if n <= 2 {
    return 1
  }
  return Fib(n-1) + Fib(n-2)
}

func main() {
  n := 30
  if len(os.Args) > 1 {
    n, _ = strconv.Atoi(os.Args[1])
  }

  timestart := time.Now();
  x:= Fib(n)
  timeend := time.Now();
  fmt.Printf("GO\tFibonacci:\t%d\tExecTime: %.2Es\tn:%d",x, float64(timeend.Sub(timestart).Nanoseconds()) * math.Pow10(-9),n);
}

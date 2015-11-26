package main

import "fmt"
import "time"
import "os"
import "strconv"
import "math"

var memo map[int]int

func Fib(n int) int {
  if x, ok := memo[n]; ok {
    return x
  }
  if n <= 0 {
    memo[n] = 1
    return memo[n]
  }
  if n <= 2 {
    memo[n] = 1
    return memo[n]
  }
  memo[n] = Fib(n-1) + Fib(n-2)
  return memo[n]
}

func main() {
  n := 30
  if len(os.Args) > 1 {
    n, _ = strconv.Atoi(os.Args[1])
  }

  timestart := time.Now()
  memo = make(map[int]int)
  memo[0] = 0
  x := Fib(n)
  timeend := time.Now()
  fmt.Printf("GO\tMemo Fibonacci:\t%d\tExecTime: %.2Es\tn:%d",x, float64(timeend.Sub(timestart).Nanoseconds()) * math.Pow10(-9),n);
}

package main

import "fmt"
import "time"

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
  timestart := time.Now()
  memo = make(map[int]int)
  memo[0] = 0
  fmt.Printf("%v\n",Fib(30))
  timeend := time.Now()
  fmt.Print(timeend.Sub(timestart))
}

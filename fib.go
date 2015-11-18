package main

import "fmt"
import "time"

func Fib(n int) int {
  if n < 2 {
    return n
  }
  return Fib(n-1) + Fib(n-2)
}

func main() {
  timestart := time.Now();
  Fib(30)
  timeend := time.Now();
  fmt.Print(timeend.Sub(timestart));
}

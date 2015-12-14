package main

import "fmt"
import "time"
import "os"
import "strconv"
import "math"

// fibonacci is a function that returns
// a function that returns an int.
func fibonacci() func() int {
	a:= 0
	b:= 1
	return func() int {
		x := a+b
		a = b
		b = x
		return x
	}
}

func main() {
	n := 30
	if len(os.Args) > 1 {
		n, _ = strconv.Atoi(os.Args[1])
	}

	timestart := time.Now();
	x:= 0
	f := fibonacci()
	for i := 1; i < n; i++ {
		x = f()
	}
	timeend := time.Now();
	fmt.Printf("GO\tFibonacci:\t%d\tExecTime: %.2Es\tn:%d",x, float64(timeend.Sub(timestart).Nanoseconds()) * math.Pow10(-9),n);
}

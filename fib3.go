package main

import "fmt"
import "time"
import "os"
import "strconv"
import "math"

func fibonacci(c, quit chan int) {
	x, y := 0, 1
	for {
		select {
		case c <- x:
			x, y = y, x+y
		case <-quit:
			fmt.Println("quit")
			return
		}
	}
}

func main() {
	n := 30
	if len(os.Args) > 1 {
		n, _ = strconv.Atoi(os.Args[1])
	}
	result := 0
	timestart := time.Now();
	c := make(chan int)
	quit := make(chan int)
	go func() {
		for i := 0; i < n; i++ {
			result = <-c
			// fmt.Println(result)
		}
		quit <- 0
	}()
	fibonacci(c, quit)

	timeend := time.Now();
	fmt.Printf("GO\tFibonacci:\t%d\tExecTime: %.2Es\tn:%d",result, float64(timeend.Sub(timestart).Nanoseconds()) * math.Pow10(-9),n);
}

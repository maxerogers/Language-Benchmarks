package main

import "fmt"
import "time"
import "os"
import "strconv"
import "math"
import "math/rand"
import "sort"

func generateRandomArray(size int) []int {
  var result []int = make([]int, size);
  for i := 0; i < 10; i++ {
    result[i] = rand.Intn(size);
  }
  return result;
}

func printArray(array []int) {
  for i := 0; i < len(array); i++ {
    fmt.Printf("%d, ",array[i])
  }
  fmt.Printf("\n")
}

func main() {
  n := 5
  if len(os.Args) > 1 {
    n, _ = strconv.Atoi(os.Args[1])
  }

  timestart := time.Now();
  size := int(math.Pow10(n))
  array := generateRandomArray(size);
  // printArray(array)
  sort.Ints(array)
  // printArray(array)
  timeend := time.Now();
  fmt.Printf("GO\tSorting:\t%d\tExecTime: %.2Es\tn:%d",size, float64(timeend.Sub(timestart).Nanoseconds()) * math.Pow10(-9),n);
}

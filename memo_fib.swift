//
//  memo_fib.swift
//  SwiftFibBenchmark
//
//  Created by Max Rogers on 11/17/15.
//  Copyright © 2015 Max Rogers. All rights reserved.
//

import Foundation

func printTimeElapsedWhenRunningCode(title:String, operation:()->()) {
    let startTime = CFAbsoluteTimeGetCurrent()
    operation()
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("Time elapsed for \(title): \(timeElapsed) s")
}

var memo = [Int: Int]()

func fib(n: Int) -> Int {
  if let x = memo[n] {
    return x
  }
  if n <= 0 {
    memo[n] = 0
  } else if n <= 2 {
    memo[n] = 1
  } else {
    memo[n] = fib(n-2) + fib(n-1)
  }
  return memo[n]!
}

printTimeElapsedWhenRunningCode("Fibonacci",operation: {fib(30)})

//
//  memo_fib.swift
//  SwiftFibBenchmark
//
//  Created by Max Rogers on 11/17/15.
//  Copyright © 2015 Max Rogers. All rights reserved.
//

import Foundation

func fib(n: Int) -> Int {
  if let x = memo[n] {
    return x
  }
  if n <= 0 {
    memo[n] = 0
  } else if n <= 2 {
    memo[n] = 1
  } else {
    memo[n] = fib(n:n-2) + fib(n:n-1)
  }
  return memo[n]!
}

var memo = [Int: Int]()
var n = 30
if Process.arguments.count > 1 {
    n = Int(Process.arguments[1])!
}
let startTime = CFAbsoluteTimeGetCurrent()
let x = fib(n:n)
let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
let numberFormatter = NumberFormatter()
numberFormatter.numberStyle = NumberFormatter.Style.scientific
numberFormatter.maximumSignificantDigits = 3
let timeString = numberFormatter.string(from:timeElapsed)
print("SWIFT\tMemo Fibonacci:\t\(x)\tExecTime: \(timeString!)s\tn:\(n)")

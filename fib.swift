//
//  main.swift
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

func fib(n: Int) -> Int {
    if n <= 0 {
        return 0
    } else if n == 1 {
        return 1
    } else {
        return fib(n-2) + fib(n-1)
    }
}

printTimeElapsedWhenRunningCode("Fibonacci",operation: {fib(30)})

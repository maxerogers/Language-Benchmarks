//
//  sorting.swift
//  SwiftSortingBenchmark
//
//  Created by Max Rogers on 11/17/15.
//  Copyright © 2015 Max Rogers. All rights reserved.
//

import Foundation

func randRange (lower: Int , upper: Int) -> Int {
    return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
}

func generateRandomArray(n: Int) -> [Int] {
  let limit = Int(pow(10, n))
  var result = Array<Int>(repeating: 0, count: limit)
  for (index, _) in result.enumerated() {
    result[index] = randRange(lower:0, upper:limit)
  }
  return result
}

var n = 5
if Process.arguments.count > 1 {
    n = Int(Process.arguments[1])!
}
let startTime = CFAbsoluteTimeGetCurrent()

var array = generateRandomArray(n:n)
array.sort()

let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
let numberFormatter = NumberFormatter()
numberFormatter.numberStyle = NumberFormatter.Style.scientific
numberFormatter.maximumSignificantDigits = 3
let timeString = numberFormatter.string(from:timeElapsed)
print("SWIFT\tSorting:\t\(array.count)\tExecTime: \(timeString!)s\tn:\(n)")

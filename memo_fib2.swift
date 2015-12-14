import Foundation

func fib(n: NSInteger) -> NSInteger {
    let key = NSNumber(integer: n)
    if let x = memo[key]?.integerValue {
        return x
    }
    if n <= 0 {
        memo.setObject(0, forKey: key)
    } else if n <= 2 {
        memo.setObject(1, forKey: key)
    } else {
        memo[key] = fib(n-2) + fib(n-1)
    }
    return memo[key]!.integerValue
}

var memo = NSMutableDictionary()
var n = 30
if Process.arguments.count > 1 {
    n = Int(Process.arguments[1])!
}
let startTime = CFAbsoluteTimeGetCurrent()
let x = fib(n)
let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
let numberFormatter = NSNumberFormatter()
numberFormatter.numberStyle = NSNumberFormatterStyle.ScientificStyle
numberFormatter.maximumSignificantDigits = 3
let timeString = numberFormatter.stringFromNumber(timeElapsed)
print("SWIFT\tMemo Fibonacci:\t\(x)\tExecTime: \(timeString!)s\tn:\(n)")

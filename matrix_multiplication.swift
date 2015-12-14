import Foundation


func multiple_matrix(n: Int) -> Int {
  //Set up Matrices
  var base_array = [Int]()
  var zeroArray = [Int]()
  for i in 1...n {
      base_array.append(i)
      zeroArray.append(0)
  }
  // base_array
  // base_array.reverse()

  var matrix1 = [[Int]]()
  var matrix2 = [[Int]]()
  for _ in 1...base_array.count {
      matrix1.append(base_array)
      matrix2.append(base_array.reverse())
  }
  var matrix3 = Array<Array<Int>>(count: matrix1.count, repeatedValue: zeroArray)

  for var i=0; i<matrix1[0].count; i++ {
      for var j=0; j<matrix2.count; j++ {
          for var k=0; k<matrix2[0].count; k++ {
              matrix3[i][j] += matrix1[i][k]*matrix2[k][i]
          }
      }
  }
  return matrix3[0][0]
}

var n = 2
if Process.arguments.count > 1 {
    n = Int(Process.arguments[1])!
}
let startTime = CFAbsoluteTimeGetCurrent()
let result = multiple_matrix(n)
let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
let numberFormatter = NSNumberFormatter()
numberFormatter.numberStyle = NSNumberFormatterStyle.ScientificStyle
numberFormatter.maximumSignificantDigits = 3
let timeString = numberFormatter.stringFromNumber(timeElapsed)
print("SWIFT\tMultiple Matrix:\t\(result)\tExecTime: \(timeString!)s\tn:\(n)")

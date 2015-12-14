# Max Rogers
# Swift VS ObjC benchmarks

x = `xcrun -sdk macosx swiftc fib.swift -O -o fib_swift.out && ./fib_swift.out`
puts "x:#{x}"
swiftTimes = {}
objcTimes = {}

n = 30
1.times do |i|
  swiftTemp = []
  objcTemp = []
  10.times do |x|
    swiftTemp.push `xcrun -sdk macosx swiftc fib.swift -O -o fib_swift.out && ./fib_swift.out 30`.to_f
    objcTemp.push `clang fib.m -lobjc -framework Foundation -Ofast && ./a.out 30`.to_f
  end
  sum = 0.0
  swiftTemp.each {|x| sum += x}
  swiftTimes[n+i] = sum / swiftTemp.count
  sum = 0.0
  objcTemp.each {|x| sum += x}
  objcTimes[n+i] = sum / objcTemp.count
end

puts "Swift Times:\n#{swiftTimes}\n\nObjective-C Times:\n#{objcTimes}"

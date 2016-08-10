#!/usr/bin/env ruby
n = 30
n = ARGV.first.to_i if ARGV.first

puts "Language Benchmark Research: n=#{n}"

puts `node fib.js #{n}`
puts `node memo_fib.js #{n}`

puts `javac Fib.java && java Fib #{n}`
puts `javac MemoFib.java && java MemoFib #{n}`
# puts `javac Fib.java && java Fib 50`
# puts `javac MemoFib.java && java MemoFib 50`
puts `ruby fib.rb #{n}`
puts `ruby memo_fib.rb #{n}`

puts `python fib.py #{n}`
puts `python memo_fib.py #{n}`

puts `xcrun -sdk macosx swiftc fib.swift -O -o fib_swift.out && ./fib_swift.out #{n}`
puts `xcrun -sdk macosx swiftc memo_fib.swift -O -o memo_fib_swift.out && ./memo_fib_swift.out #{n}`

puts `gcc fib.c && ./a.out #{n}`
# puts `gcc memo_fib.c && ./a.out 30`

puts `g++ fib.cc && ./a.out #{n}`
puts `g++ memo_fib.cc && ./a.out #{n}`

puts `clang fib.m -lobjc -framework Foundation && ./a.out #{n}`
puts `clang memo_fib.m -lobjc -framework Foundation && ./a.out #{n}`

puts `go run fib.go #{n}`
puts `go run memo_fib.go #{n}`

#
# puts `swift fib.swift 40`
# puts `swift memo_fib.swift 40`
# puts `clang fib.m -lobjc -framework Foundation && ./a.out 40`
# puts `clang memo_fib.m -lobjc -framework Foundation && ./a.out 40`

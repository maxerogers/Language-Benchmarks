#!/usr/bin/env ruby
puts "Language Benchmark Research"

puts `node fib.js 30`
puts `node memo_fib.js 30`

puts `javac Fib.java && java Fib 30`
puts `javac MemoFib.java && java MemoFib 30`
# puts `javac Fib.java && java Fib 50`
# puts `javac MemoFib.java && java MemoFib 50`
puts `ruby fib.rb 30`
puts `ruby memo_fib.rb 30`

puts `python fib.py 30`
puts `python memo_fib.py 30`

puts `swift fib.swift 30`
puts `swift memo_fib.swift 30`

puts `gcc fib.c && ./a.out 30`
# puts `gcc memo_fib.c && ./a.out 30`

puts `g++ fib.cc && ./a.out 30`
puts `g++ memo_fib.cc && ./a.out 30`

puts `go run fib.go 30`
puts `go run memo_fib.go 30`

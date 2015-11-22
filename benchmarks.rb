#!/usr/bin/env ruby
puts "Language Benchmark Research"
puts `javac Fib.java && java Fib 30`
puts `javac MemoFib.java && java MemoFib 30`
# puts `javac Fib.java && java Fib 50`
# puts `javac MemoFib.java && java MemoFib 50`
puts `ruby fib.rb 30`
puts `ruby memo_fib.rb 30`

puts `python fib.py 30`
puts `python memo_fib.py 30`

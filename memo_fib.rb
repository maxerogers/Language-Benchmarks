# require 'benchmark'
# require 'bigdecimal/math'

$memo = {}

def fib(n)
  return $memo[n] if $memo[n]
  if n <=0
    result = 0
  elsif n <= 2
    result = 1
  else
    result = fib(n-2)+fib(n-1)
  end
  return $memo[n] = result
end

n = 30
n = ARGV.first.to_i if ARGV.first

startTime = Time.now.to_f
x = fib(n)
endTime = Time.now.to_f
puts "RUBY\tMemo Fibonacci:\t#{x}\tExecTime: #{"%.2E" % (endTime - startTime)}s\tn:#{n}"

# calculate pi to 10k digits
# puts Benchmark.measure { fib(x) }

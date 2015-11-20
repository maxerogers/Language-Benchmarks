require 'benchmark'
require 'bigdecimal/math'

$memo = {}

def fib(n)
  return $memo[n] if $memo[n]
  if n <=0
    result = 0
  elsif n == 1
    result = 1
  else
    result = fib(n-2)+fib(n-1)
  end
  return $memo[n] = result
end

# calculate pi to 10k digits
puts Benchmark.measure { fib(30) }

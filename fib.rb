require 'benchmark'
require 'bigdecimal/math'

def fib(n)
  if n <= 0
    return 0
  elsif n == 1
    return 1
  else
    return fib(n-2)+fib(n-1)
  end
end

# calculate pi to 10k digits
puts Benchmark.measure { fib(30) }

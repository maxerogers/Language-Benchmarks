# require 'benchmark'
# require 'bigdecimal/math'

def fib(n)
  if n <= 0
    return 0
  elsif n <= 2
    return 1
  else
    return fib(n-2)+fib(n-1)
  end
end

n = 30
n = ARGV.first.to_i if ARGV.first

startTime = Time.now.to_f
x = fib(n)
endTime = Time.now.to_f
puts "RUBY\tFibonacci:\t#{x}\tExecTime: #{"%.2E" % (endTime - startTime)}s\tn:#{n}"

# puts Benchmark.measure { fib(n) }

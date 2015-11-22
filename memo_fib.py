import sys
import time

memo = {}

def fib(n):
    if n in memo.keys():
        return memo[n]
    if n <= 0:
        memo[n] = 0
        return memo[n]
    elif n <= 2:
        memo[n] = 1
        return memo[n]
    else:
        memo[n] = fib(n-2) + fib(n-1)
        return memo[n]

start = time.time()
n = 30
if sys.argv[1] != '':
    n = int(sys.argv[1])

x = fib(n)
end = time.time()
print "PYTHON\tMemo Fibonacci:\t{} \tExecTime: {:.2E}s\tn:{}".format(x, end - start,n)

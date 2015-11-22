import sys
import time

def fib(n):
    if n <= 0:
        return 0
    elif n <= 2:
        return 1
    else:
        return fib(n-2) + fib(n-1)

start = time.time()
n = 30
if sys.argv[1] != '':
    n = int(sys.argv[1])

x = fib(n)
end = time.time()
print "PYTHON\tFibonacci:\t{} \tExecTime: {:.2E}s\tn:{}".format(x, end - start,n)

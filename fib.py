
import time

def fib(n):
    if n <= 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fib(n-2) + fib(n-1)

start = time.time()
print(fib(30))
end = time.time()
print end - start

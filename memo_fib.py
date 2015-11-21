
import time

memo = {}

def fib(n):
    if n in memo.keys():
        return memo[n]
    if n <= 0:
        memo[n] = 0
        return memo[n]
    elif n == 1:
        memo[n] = 1
        return memo[n]
    else:
        memo[n] = fib(n-2) + fib(n-1)
        return memo[n]

start = time.time()
print(fib(30))
end = time.time()
print end - start

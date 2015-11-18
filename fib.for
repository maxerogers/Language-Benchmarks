program fibonmain
  ! recursive fibonacci program in
  ! fortran 90
  integer n, final, fibon
  n = 5
  final = fibon(n)
  write(6,*) "Final fibonacci value for input of",n," is",final
end
!
recursive function fibon(n) result (fib_result)
  integer  :: n, fib_result
  if (n <= 2) then
    fib_result = 1
  else
    fib_result = fibon(n-1) + fibon(n-2)
  endif
end

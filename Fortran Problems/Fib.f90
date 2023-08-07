PROGRAM Fib

IMPLICIT NONE

integer :: n, result
print *, "Type in index of fibonnaci sequence: "
read *, n

result = fibonacci(n)

print *, result

contains
recursive integer function fibonacci (n) result(fibby)

integer, intent(in) :: n

if (n .eq. 1 .or. n .eq. 2) then
    fibby = 1
else
    fibby = fibonacci(n-1) + fibonacci(n-2)
end if

end function fibonacci

END PROGRAM Fib

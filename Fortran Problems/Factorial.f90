PROGRAM Factorial
!--------------------------------------------------------------------------
! Mark Windsor
!
! Recursive implementation of computing factorial
!
!--------------------------------------------------------------------------

IMPLICIT NONE

integer :: n, result
Print *, "Please enter n:"
read *, n

result = fact(n)

print *, "the answer is: ", result


CONTAINS

recursive integer function fact(n) result(factorial)

integer, intent(in) :: n
!integer :: factorial

if (n .eq. 1) then
    factorial = 1
    else
        factorial = n * fact(n-1)
end if

end function fact

end program Factorial

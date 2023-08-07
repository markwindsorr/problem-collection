PROGRAM GreatestCommonDivisor
!--------------------------------------------------------------------------
! Mark Windsor
!
! recursive implementation of gcd
!
!--------------------------------------------------------------------------

IMPLICIT NONE

integer :: m, n, result
Print *, "Please enter n:"
read *, n

Print *, "Please enter m:"
read *, m
result = gcdRecursive(m, n)

print *, "the answer is: ", result


CONTAINS

recursive integer function gcdRecursive(m, n) result(gcd)

integer, intent(in) :: m, n

if(mod(m, n) .ne. 0) then
    gcd = gcdRecursive(n, mod(m, n))
    else
        gcd = n
end if

end function

end program


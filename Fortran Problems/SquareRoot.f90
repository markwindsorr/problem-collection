PROGRAM SquareRoot
!--------------------------------------------------------------------------
! Mark Windsor
!
! SquareRoot approximation
!
!--------------------------------------------------------------------------

IMPLICIT NONE

real :: a, result

print *, "Please enter A: "
read *, a

result = sqrt(a)
print *, "The sqrt is : ", result

contains
real function sqrt(a)

real, intent(in) :: a
real :: x, nextX, eps
logical :: cont

eps = 0.00001
cont = .true.
x = a/2

do while(cont)
    nextX = (x+a/x)/2
    if(abs(nextX - x) .lt. eps) then
        sqrt = nextX
        return
    else
        x = nextX
    end if
end do
end function

END PROGRAM SquareRoot

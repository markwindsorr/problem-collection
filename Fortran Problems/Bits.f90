PROGRAM Bits
!--------------------------------------------------------------------------
! Mark Windsor
!
! an integer function that returns the number of bits which are different
! in binary representations of integers m and n
!--------------------------------------------------------------------------

IMPLICIT NONE

integer :: m, n, result

print *, "enter values for m"
read *, m

print *, "enter values for n"
read *, n

result = Bit(m, n)

print *, "The number of bits that are different is: ", result

contains
integer function Bit(m, n)

integer, intent(inout) :: m, n
integer :: count

count = 0

do while(m .ne. n)
    if(mod(n,2) .ne. mod(m, 2)) then
        count = count + 1
    end if
    m = m/2
    n = n/2
    print *, m
    print *, n
end do

Bit = count
end function



END PROGRAM Bits

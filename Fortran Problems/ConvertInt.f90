PROGRAM ConvertInt
!--------------------------------------------------------------------------
! Mark Windsor
!
! Convert integer into a sequence of characters
!
!--------------------------------------------------------------------------

IMPLICIT NONE

integer :: int, result

print *, "Please specify the int you want to convert into a string: "
read *, int

result = Convert(int)

print *, "number of digits in int and string: ", result

contains

integer function Convert(int)

integer, intent(in) :: int
character(len = 50) :: intString
character*10 :: A
integer :: i, j, k


i = 0
k = int
do while(i .le. 10 .and. k .gt. 0)
    j = mod(k,10)
    i = i+1
    A(i:i) = CHAR(j + IACHAR('0'))
    k = k/10
end do

do j = 1, i
    intString(j:j) = A(j:j)
end do

print *, intString

Convert = LEN(trim(adjustl(intString)))

end function






END PROGRAM ConvertInt

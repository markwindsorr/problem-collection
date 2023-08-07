PROGRAM SetDifference
!--------------------------------------------------------------------------
! Mark Windsor
!
! create a set C that is the difference between set A and set B
!
!--------------------------------------------------------------------------

IMPLICIT NONE

integer :: n, i, j
integer, dimension(:), allocatable :: A, B

print *, "How many numbers in A and B: "
read *, n

allocate(A(n), B(n))

print *, "Populate A: "
do i = 1, n
    read *, A(i)
end do

print *, "Populate B: "
do i = 1, n
    read *, B(i)
end do

call Difference (A, B, n)

contains

subroutine Difference (A, B, n)

integer, dimension(:), intent(in) :: A, B
integer, intent(in) :: n
integer, dimension(:), allocatable :: C
integer :: i, j, cIndex
logical :: contain

allocate(C(n))
cIndex = 1

do i = 1, n
    do j = 1, n
        if(A(i) .eq. B(j)) then
            contain = .true.
        end if
    end do
    if(.not. contain) then
        C(cIndex) = A(i)
        cIndex = cIndex + 1
    end if
end do

print *, "The difference between A & B is C: ", C


end subroutine



END PROGRAM SetDifference

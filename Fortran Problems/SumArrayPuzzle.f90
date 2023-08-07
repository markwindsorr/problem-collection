PROGRAM SumArrayPuzzle
!--------------------------------------------------------------------------
! Mark Windsor
!
! Given an array of n integers A, construct a sum array of the same size
! such that sum(i) is equal to the sum of all the elements of A except A(i).
!
!--------------------------------------------------------------------------

IMPLICIT NONE

integer, dimension(:), allocatable :: A
integer :: n, i

print *, "How many items in A: "
read *, n
allocate(A(n))

print *, "Populate A"
do i = 1, n
    read *, A(i)
end do

call sumArrayPuzz(A, n)

contains
subroutine sumArrayPuzz (A, n)

integer, dimension(:), intent(in) :: A
integer, dimension(:), allocatable :: sumArray
integer, intent(in) :: n
integer :: i

allocate(sumArray(n))

do i = 1, n
    sumArray(i) = SUM(A) - A(i)
end do

print *, sumArray

end subroutine


END PROGRAM SumArrayPuzzle

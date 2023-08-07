PROGRAM MergeIntervals
!--------------------------------------------------------------------------
! Mark Windsor
!
! Iteratively merges the overlapping intervals and returns the number of resulting
! non overlaping intervals (the merged intervals replace the original intervals
! in arrays X and Y)
!
!--------------------------------------------------------------------------

IMPLICIT NONE

integer, dimension(:), allocatable :: X, Y
integer :: n, result, i

print *, "how many intervals X and Y"
read *, n

allocate(X(n), Y(n))

print *, "Populate X"
do i = 1, n
    read *, X(i)
end do

print *, "populate Y"
do i = 1, n
    read *, Y(i)
end do

result = Merge(X, Y, n)

print *, "Number of resulting intervals: ", result

contains
integer function Merge(X, Y, n)

integer, dimension(:), intent(inout) :: X, Y
integer, intent(in) :: n
integer :: i, j, count

count = 1

do i = 1, n
    do j = 1, n
        if(X(i) .le. X(j) .and. X(j) .le. Y(i) .OR. X(j) .le. X(i) .and. X(i) .le. Y(j) .and. i .ne. j) then
            X(i) = MIN(X(i), X(j))
            Y(i) = MAX(Y(i), Y(j))
        end if
    end do
end do

print *, "X: ", X
print *, "Y: ", Y


!count how many different X values to see how many intervals
do i = 1, n-1
    if(X(i) .ne. X(i+1))then
        count = count + 1
    end if
end do

Merge = count

end function


END PROGRAM MergeIntervals

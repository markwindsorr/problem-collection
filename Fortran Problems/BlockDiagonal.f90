PROGRAM BlockDiagonal
!--------------------------------------------------------------------------
! Mark Windsor
!
! an integer function that checks if a real matrix is block diagonal and
! which returns the sizes of consecutive blocks in array B
!
!--------------------------------------------------------------------------

IMPLICIT NONE

integer, dimension(:, :), allocatable :: A
integer :: i, j, n, result

print *, "What is the dimensions of matrix: "
read *, n

allocate(A(n, n))

print *, "Please populate matrix: "
do i = 1, n
    do j = 1, n
        read (*, *) A(i, j)
    end do
end do

result = Blocks(A, n)

print *, "The number of blocks inside matrix is : ", result

contains

integer function Blocks(A, n)

integer, intent(in) :: n
integer, dimension(:, :), intent(in) :: A
integer, dimension(:), allocatable :: B
integer :: i, j, count, blockCount, bIndex, k

blockCount = 0
bIndex = 1
count = 1

allocate(B(n)) ! allocate more than enough space for B

! initial chheck to see if diagonals are zero, if so exit
do i = 1, n
    if(A(i, i) .eq. 0) then
        print *, "matrix is not block diagonal"
        return
    end if
end do


do k = 1, n
    if(A(k+1, k+1) .ne. 0 .and. A(k+1, k) .ne. 0 .and. A(k, k+1) .ne. 0) then
        count = count + 1
    else
        blockCount = blockCount + 1
        B(bIndex) = count
        count = 1
        bIndex = bIndex + 1
    end if
end do

print *, "The sizes of the blocks are: ", B

Blocks = blockCount

end function


END PROGRAM BlockDiagonal

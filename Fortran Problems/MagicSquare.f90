PROGRAM MagicSquare
!--------------------------------------------------------------------------
! Mark Windsor
!
! Checks to see if a square matrix is magic by checking if sum of columns, rows
! and main diagonals are equal
!
!--------------------------------------------------------------------------

IMPLICIT NONE

integer, dimension(:, :), allocatable :: A
integer :: i, j, n
logical :: result



print *, "Enter dimension of the matrix"
read *, n

allocate(a(n, n))

print *, "Please populate the matrix"
do i = 1, n
    do j = 1, n
        read(*,*) A(i, j)
    end do
end do

result = isMagicSquare(A, n)
print *, "is the square matrix you entered in a magic square: ", result

contains

logical function isMagicSquare(A, n)

integer, dimension(:, :), intent(in) :: A
integer, intent(in) :: n
integer :: i, j, rowSum, columnSum, diagonalSum

diagonalSum = 0

do i = 1, n
    diagonalSum = diagonalSum + A(i, i)
end do



do i = 1, n

    rowSum = SUM(A(i,:))

    do j = 1, n

        columnSum = SUM(A(:, j))

        if(rowSum .NE. columnSum .OR. rowSum .NE. diagonalSum .OR. columnSum .NE. diagonalSum) then

            isMagicSquare = .false.
            return

        end if

    end do

end do

isMagicSquare = .true.

end function


END PROGRAM MagicSquare

PROGRAM SymmetricMatrix
!--------------------------------------------------------------------------
! Mark Windsor
!
! Check if square matrix is symmetric
!
!--------------------------------------------------------------------------

IMPLICIT NONE

INTEGER, DIMENSION(:,:), ALLOCATABLE :: A
INTEGER :: i, j, n
LOGICAL :: result

PRINT *, "Enter dimension of matrix, has to be a square"
READ *, n

ALLOCATE(A(n,n))

!Populate matrix from input
PRINT *, "Populate matrix from input"
DO i = 1, n
    DO j = 1, n

        READ (*,*) A(i, j)

    END DO
END DO

result = CheckMatrix(A, n)

PRINT *, "Is this matrix symmetric? ANSWER: ", result

CONTAINS

LOGICAL FUNCTION CheckMatrix(A, n)

INTEGER, DIMENSION(:,:), INTENT(In) :: A
INTEGER, INTENT(IN) :: n
INTEGER :: i, j

DO i = 1, n
    DO j = 1, n
        IF(A(i, j) .NE. A(j, i)) THEN
            CheckMatrix = .false.
            return
        END IF
    END DO
END DO

CheckMatrix = .true.

END FUNCTION
END PROGRAM SymmetricMatrix

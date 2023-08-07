PROGRAM DerivedFigure
!--------------------------------------------------------------------------
! Mark Windsor
!
! Derived type Figure to store information about three types of geometric figures
! circle, square and equilateral triangle. Subroutine that orders figures in
! increasing order with respect to area
!--------------------------------------------------------------------------

IMPLICIT NONE

type Figure
    character(8) :: figureType
    character(8) :: shapeName
    real :: measurement
end type

integer :: n, i

type(Figure), dimension(:), allocatable :: A

print *, "Enter number of figures: "
read *, n

allocate(A(n))
print *, "Please populate figure array:"
read *, (A(i), i = 1, n)

call Order(A, n)


contains
subroutine Order(A, n)

type(figure), dimension(:), intent(inout) :: A
type(figure) :: figureTemp
real, dimension(:), allocatable :: areaArray
integer, intent(in) :: n
real :: PI, area, triCoefficient, temp
logical :: swapped
integer :: i, j

PI = 3.14
triCoefficient = 0.433

allocate(areaArray(n))

! get areas and store in auxiliary array X
do i = 1, n
    if(A(i)%figureType .eq. 'Circle') then
        area = 2*PI*A(i)%measurement**2
        print *, area
    else if(A(i)%figureType .eq. 'Triangle') then
        area = triCoefficient*A(i)%measurement**2
        print *, area
    else
        area = A(i)%measurement**2
        print *, area
    end if
    areaArray(i) = area
end do

! Do bubble sort on auxiliary area array X and do same operations on figure array
do i = SIZE(areaArray)-1, 1, -1
    swapped = .false.
    do j = 1, i
        if(areaArray(j) .gt. areaArray(j+1)) then
            swapped = .true.

            temp = areaArray(j)
            areaArray(j) = areaArray(j+1)
            areaArray(j+1) = temp

            figureTemp = A(j)
            A(j) = A(j+1)
            A(j+1) = figureTemp
        end if
    end do
    if(.not. swapped) exit
end do

!format this later
Print *, A

end subroutine


END PROGRAM DerivedFigure

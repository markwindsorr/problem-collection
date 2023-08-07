PROGRAM StronglyConnected
!--------------------------------------------------------------------------
! Mark Windsor
!
! A fortran program which enters a directed graph,as a seqence of edges
! ( ie. pairs of nodes)
!--------------------------------------------------------------------------

IMPLICIT NONE

integer, dimension(:,:), allocatable :: A
integer :: numOfNodes, i, j
logical :: isStrongConn

print *, "How many nodes: "
read *, numOfNodes

allocate(A(numOfNodes, numOfNodes))

print *, "Populate adjacency matrix.. 1 for a connection between i to j, 0 for none"
do i = 1, numOfNodes
    do j = 1, numOfNodes
        read(*, *) A(i, j)
    end do
end do

isStrongConn = StrongConn(A, numOfNodes)

print *, "Is directed graph strongly connected: ", isStrongConn

contains

logical function StrongConn(A, numOfNodes)

integer, dimension(:, :), intent(in) :: A
integer, intent(in) :: numOfNodes
integer, dimension(:), allocatable :: X
integer :: i, j, k

allocate(X(numOfNodes))

do i = 1, numOfNodes
    X = A(i, :) ! select ith row
    do j = 1, numOfNodes
        if(X(j) .eq. 1)then
            X = X + A(j,:)
        end if
    end do

    ! Check X for zeros excluding node ur on
    do k = 1, numOfNodes
        if(X(k) .eq. 0 .and. k .ne. i) then
            StrongConn = .false.
            return
        end if
    end do
end do

StrongConn = .true.

end function



END PROGRAM StronglyConnected

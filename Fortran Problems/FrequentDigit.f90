PROGRAM FrequentDigit
!--------------------------------------------------------------------------
! Mark Windsor
!
! Character function that returns the most frequent digit in the string s
! of length n. All characters which are not digits are ignored. If several
! digits occur in s the same number of times, the last one in the sense of
! ordering is returned. If s does not ontain any digit, the question mark ?
! should be returned.
!
! Hint: an integer array of 10 counters can be used to find number occurences
! of each digit
!--------------------------------------------------------------------------

IMPLICIT NONE

integer :: result

character(len = 20) :: digits
digits = '34576353563674345623467'

result = frequent(digits)
print *, "Most frequent digit in string is: ", result

contains
integer function frequent(digitString)

character(*), intent(in) :: digitString
integer, dimension(:), allocatable :: counterArray
integer :: maxIndex, maxCount, i

allocate(counterArray(10))

! set counter array to 0
do i = 1, 10
    counterArray(i) = 0
end do

do i = 1, len(digitString)

    if(digitString(i:i) .eq. '0') then
        counterArray(1) = counterArray(1) + 1
    else if(digitString(i:i) .eq. '1') then
        counterArray(2) = counterArray(2) + 1
    else if(digitString(i:i) .eq. '2') then
        counterArray(3) = counterArray(3) + 1
    else if(digitString(i:i) .eq. '3') then
        counterArray(4) = counterArray(4) + 1
    else if(digitString(i:i) .eq. '4') then
        counterArray(5) = counterArray(5) + 1
    else if(digitString(i:i) .eq. '5') then
        counterArray(6) = counterArray(6) + 1
    else if(digitString(i:i) .eq. '6') then
        counterArray(7) = counterArray(7) + 1
    else if(digitString(i:i) .eq. '7') then
        counterArray(8) = counterArray(8) + 1
    else if(digitString(i:i) .eq. '8') then
        counterArray(9) = counterArray(9) + 1
    else if(digitString(i:i) .eq. '9') then
        counterArray(10) = counterArray(10) + 1
    end if
    print *, counterArray

end do

maxCount = counterArray(1)

do i = 1, 10
    if(counterArray(i) .gt. maxCount) then
        maxCount = counterArray(i)
        maxIndex = i - 1
    end if
end do

frequent = maxIndex

end function




END PROGRAM FrequentDigit

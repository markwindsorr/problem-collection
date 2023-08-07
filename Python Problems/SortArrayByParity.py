# Sort Array By Parity

"""
Given an array A of non-negative integers, return an array consisting of all the even elements of A, 
followed by all the odd elements of A.

You may return any answer array that satisfies this condition.

Example:

Input: [3,1,2,4]
Output: [2,4,3,1]
The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.
"""



class Solution(object):
    def sortArrayByParity(self, A):
        """
        :type A: List[int]
        :rtype: List[int]
        """
        if len(A) == 0:
            return []
        
        #Even nums
        result = []
        odd_nums = []
        for i in range(0, len(A)):
            # check for even
            if A[i] % 2 == 0:
                result.append(A[i])
            else:
                odd_nums.append(A[i])
                
        result.sort()
        odd_nums.sort()
        for i in range(0, len(odd_nums)):
            result.append(odd_nums[i])
        
        return result
        
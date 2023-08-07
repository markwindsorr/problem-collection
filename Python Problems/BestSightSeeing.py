"""
Given an array A of positive integers, A[i] represents the value of the i-th 
sightseeing spot, and two sightseeing spots i and j have distance j - i between 
them.

The score of a pair (i < j) of sightseeing spots is (A[i] + A[j] + i - j) : 
the sum of the values of the sightseeing spots, minus the distance between them.

Return the maximum score of a pair of sightseeing spots.

"""

class Solution(object):
    def maxScoreSightseeingPair(self, A):
        """
        :type A: List[int]
        :rtype: int
        """
        
        max_score = 0
        for i in range(0, len(A)-1):
            for j in range(i+1, len(A)):
                current_score = A[i] + A[j] + i - j
                if current_score > max_score:
                    max_score = current_score
                    
        return max_score
                
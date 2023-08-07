# Subtract the Product & Sum of Digits of an Integer

"""
Given an integer number n, return the difference between the product 
of its digits and the sum of its digits.

Example:

Input: n = 234
Output: 15 
Explanation: 
Product of digits = 2 * 3 * 4 = 24 
Sum of digits = 2 + 3 + 4 = 9 
Result = 24 - 9 = 15

"""

class Solution(object):
    def subtractProductAndSum(self, n):
        """
        :type n: int
        :rtype: int
        """
        product = 1
        nsum = 0
        while n != 0:
            remainder = n % 10
            product = product * remainder
            nsum = nsum + remainder
            #update n
            n = n - remainder
            n = n / 10
            
        return product - nsum
        
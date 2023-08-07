"""
Given two non-negative integers num1 and num2 represented as string, 
return the sum of num1 and num2.

Note:

The length of both num1 and num2 is < 5100.
Both num1 and num2 contains only digits 0-9.
Both num1 and num2 does not contain any leading zero.

You must not use any built-in BigInteger library or convert the inputs 
to integer directly.

"""


class Solution(object):
    def addStrings(self, num1, num2):
        """
        :type num1: str
        :type num2: str
        :rtype: str
        """
        if num1 == "":
            return num2
        
        if num2 == "":
            return num1
        
        int_map = {
            "0": 0,
            "1": 1,
            "2": 2,
            "3": 3,
            "4": 4,
            "5": 5,
            "6": 6,
            "7": 7, 
            "8": 8,
            "9": 9
        }
        
        # convert num1 string into integer
        num1 = num1[len(num1)::-1]
        integer_one = 0
        factor_one = 1
        for char in num1:
            add_value = int_map[char] * factor_one
            factor_one = factor_one * 10
            integer_one = integer_one + add_value

        # convert nu2 string into integer
        num2 = num2[len(num2)::-1]
        integer_two = 0
        factor_two = 1
        for char in num2:
            add_value = int_map[char] * factor_two
            factor_two = factor_two * 10
            integer_two = integer_two + add_value
        
        return str(integer_one + integer_two)



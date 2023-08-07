"""
Add Binary

Given two binary strings, return their sum(also a binary string)

"""

def addBinary(self, a, b):
    
    if len(a) == 0:
        return b
    if len(b) == 0:
        return a
    
    a_dec = int(a, 2)
    b_dec = int(b, 2)
    
    result = a_dec + b_dec
    result_bin = bin(result)
    
    return result_bin.replace('0b', '')



























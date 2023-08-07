"""
Reverse Integer

Given a 32-bit signed integer, reverse digits

"""

def reverse_integer(x):

    neg = False
    reversed_int = 0
    
    if x < 0:
        neg = True
        x = abs(x)


    while x != 0:

        #pop
        remainder = x % 10
        x = x // 10

        #push
        temp = reversed_int * 10 + remainder
        reversed_int = temp

    if neg == True:
        return reversed_int * (-1)
    else:
        return reversed_int

input = -12345
result = reverse_integer(input)
print(result)


































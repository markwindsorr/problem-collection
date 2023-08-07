"""
Contains Duplicate

Given an array of integers, find if the array contains any duplicates

Your function should return true if any value appears at least twice in the 
array, and it should return false if every element is distinct

Solution Thought 

1. Naive/brute force approach: Look at each element i and compare it to the rest of the array
after i.

2. Sort array and then loop through once checking if i is equal to i+1

"""

# 1. Naive brute force approach
def containsDuplicateNaive(nums):

    if len(nums) == 0:
        return False

    for i in range(0, len(nums) - 1):
        for j in range(i+1, len(nums)):
            if nums[i] == nums[i+1]:
                return True

    return False 


# 2. Sort approach
def containsDuplicateSort(nums):

    if len(nums) == 0:
        return False

    nums.sort()
    for i in range(0, len(nums) - 1):
        if nums[i] == nums[i+1]:
            return True

    return False


nums = [1, 2, 3]

print(containsDuplicateSort(nums))
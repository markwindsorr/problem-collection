"""

3Sum 

Given an array nums of n integers, are there elements a, b and c in nums such that a+b+c=0. Find the unique triplets in the array which
gives the sum of zero

The solution set must not contain duplicate triplets
"""

def threeSum(self, nums):

    result_list = []
    nums.sort()
    for i in range(0, len(nums)-2):
        for j in range(i+1, len(nums)-1):
            for k in range(j+1, len(nums)):
                if nums[i] + nums[j] + nums[k] == 0:
                    result_list.append([nums[i], nums[j], nums[k]])

    # Convert to a set bc sets do not allow diplicate members

    return set(map(tuple, result_list))
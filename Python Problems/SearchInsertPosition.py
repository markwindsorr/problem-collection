"""
Search Insert Position

Given a sorted array and a target value, return the index if the target is found. If not, return
the index where it should be if it were inserted in order.

"""

def search_insert(nums, target):

    for i in range(len(nums)):
        if target <= nums[i]:
            return i
    return len(nums)


input = [1, 3, 5, 6]
target = 7

result = search_insert(input, target)
print(result)



































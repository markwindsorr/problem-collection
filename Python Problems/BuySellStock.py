# Best Time to Buy and Sell Stock Question

"""
Given an array of prices, find the max profit you can make.
You can only make one buy transaction and one sell transaction.
You must buy before you sell.

Input: [7, 2, 3, 9, 1]

Output: 7 because here you buy at 2 and sell at 9


"""

def find_max_profit(prices):

    if len(prices) == 0 or len(prices) == 1:
        return 0

    max_profit = 0
    for i in range(0, len(prices)-1):
        for j in range(i+1, len(prices)):
            if prices[j] - prices[i] > max_profit:
                max_profit = prices[j] - prices[i]


    return max_profit

input = [7, 2, 3, 9, 1]

result = find_max_profit(input)

print(result)
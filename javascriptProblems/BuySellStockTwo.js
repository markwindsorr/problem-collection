/**
 * You are given an array prices where prices[i] is the price of a given stock on the ith day.
 *
 * You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
 *
 *  Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
 */

// Brute force
const maxProfit = (prices) => {
    if (prices.length === 1) {
        return 0;
    }
    let maxProfit = 0;
    for (let i = 0; i < prices.length - 1; i++) {
        for (let j = i + 1; j < prices.length; j++) {
            const buyValue = prices[i];
            const sellValue = prices[j];
            const currentProfit = sellValue - buyValue;
            if (currentProfit > maxProfit) {
                maxProfit = currentProfit;
            }
        }
    }
    return maxProfit;
};

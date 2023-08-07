/*

Two Sum

Given an array of integers, return indices of the two 
numbers such that they add up to a specific target.

You may assume that each input would have exactly 
one solution, and you may not use the same element twice.

*/

/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function (nums, target) {
  var resultArray = [];

  for (var i = 0; i < nums.length - 1; i++) {
    for (var j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        resultArray.push(i, j);
        return resultArray;
      }
    }
  }

  return [];
};

console.log(twoSum([2, 3, 4, 7, 8], 15));

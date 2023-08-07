/*
Given an array nums of size n, return the majority element.
The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that 
the majority element always exists in the array.
*/

const majorityElement = (nums) => {
  const majorityTracker = {};
  nums.forEach((num) => {
    if (!majorityTracker[num]) majorityTracker[num] = 0;
    majorityTracker[num] = majorityTracker[num] + 1;
  });
  const values = Object.values(majorityTracker);
  const maxValue = Math.max(...values);
  return Object.keys(majorityTracker).find(
    (key) => majorityTracker[key] === maxValue
  );
};

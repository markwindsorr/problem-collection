/*
Given a positive integer num, write a function which returns True if num is a perfect square else False.

Follow up: Do not use any built-in library function such as sqrt.

*/

/**
 * @param {number} num
 * @return {boolean}
 */
var isPerfectSquare = (num) => {
  let i = 1;
  while (i * i <= num) {
    if (i * i === num) return true;
    i++;
  }
  return false;
};

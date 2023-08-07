/* 

Write an algorithm to determine if a number n is happy.

A happy number is a number defined by the following process:

Starting with any positive integer, replace the number by the sum of the squares of its digits.
Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
Those numbers for which this process ends in 1 are happy.
Return true if n is a happy number, and false if not.



*/

//323

const isHappy = (n) => {
  if (n === 1) {
    return true;
  }

  let num = n;
  let tries = 0;
  while (num !== 1) {
    // split digits of num
    const divisor = 10;
    const digitArray = [];
    let newNum = num;
    while (newNum !== 0) {
      const digit = newNum % 10;
      digitArray.push(digit);
      newNum = (newNum - digit) / divisor;
    }

    const initialVal = 0;
    const nextSum = digitArray.reduce(
      (accumulator, currentValue) => accumulator + Math.pow(currentValue, 2),
      initialVal
    );

    if (nextSum === 1) {
      return true;
    }
    num = nextSum;
    tries++;
    if (tries > 20) {
      return false;
    }
  }
};

console.log(isHappy(22));

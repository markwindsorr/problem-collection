const arrayEquals = (a, b) => {
  return (
    Array.isArray(a) &&
    Array.isArray(b) &&
    a.length === b.length &&
    a.every((val, index) => val === b[index])
  );
};

const isNumberPalindrome = (num) => {
  const numberArray = [];
  while (num !== 0) {
    const numToAdd = num % 10;
    numberArray.push(numToAdd);
    // update
    num = (num - numToAdd) / 10;
  }
  
  return isEqual;
};

console.log(isNumberPalindrome(1218));

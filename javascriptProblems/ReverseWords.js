/**
 * @param {string} s
 * @return {string}
 */
var reverseWords = (s) => {
  let newStringArray = [];
  const split = s.split(" ");
  split.forEach((word) => {
    const newWord = word.split("").reverse().join("");
    newStringArray.push(`${newWord}`);
  });
  return newStringArray.join(" ");
};

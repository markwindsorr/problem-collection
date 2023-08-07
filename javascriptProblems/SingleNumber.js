// /**
//  * @param {number[]} nums
//  * @return {number}
//  */

// const singleNumber = (nums) => {
//   const hashMap = {};

//   nums.forEach((num) => {
//     if (hashMap[num]) {
//       hashMap[num] = false;
//     } else {
//       hashMap[num] = true;
//     }
//   });
//   return Object.keys(hashMap).filter((key) => hashMap[key] === true);
// };

const device = "1234";

const map = {};

map[device] = "something";
console.log(map);

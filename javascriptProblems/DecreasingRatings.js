const decreasingRating = (ratings) => {
  const ratingsLength = ratings.length;
  if (ratingsLength === 0) {
    return 0;
  } else if (ratingsLength === 1) {
    return 1;
  }
  let decreasingCount = 0;
  let i = 0;
  while (i < ratingsLength) {
    let j = i + 1;
    if (ratings[i] > ratings[j]) {
      decreasingCount++;
    }
    i = j;
  }
  return ratingsLength + decreasingCount;
};

console.log(decreasingRating([5, 3, 2, 1, 3, 9, 2, 1, 5, 1]));

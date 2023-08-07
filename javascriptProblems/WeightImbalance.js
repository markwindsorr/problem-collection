function getTotalImbalance(weight) {
  // First check if weight has a length of 0 or that all
  // weights are equal
  if (
    weight.length === 0 ||
    weight.length === 1 ||
    weight.every((w) => w === weight[0])
  ) {
    return 0;
  }
  // Generate contigous Subarrays
  // and calculate the weight imbalance not taking
  // into account singular subarrays since we know
  // the imbalance to be 0
  let weightImbalance = 0;
  for (let i = 0; i < weight.length; i++) {
    for (let j = i + 1; j < weight.length; j++) {
      const subArray = weight.slice(i, j + 1);
      console.log(subArray);
      const currentImbalance = Math.abs(
        Math.max(subArray) - Math.min(subArray)
      );
      weightImbalance = weightImbalance + currentImbalance;
    }
  }
  return weightImbalance;
}

console.log(getTotalImbalance([3, 3, 2, 3]));

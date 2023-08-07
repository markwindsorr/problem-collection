/**
 * @param {number[][]} intervals
 * @return {number[][]}
 */

const merge = (intervals) => {
  if (intervals.length === 1) {
    return intervals;
  }
  const newIntervals = [];
  for (let i = 0; i < intervals.length - 1; i++) {
    const currentInterval = intervals[i];
    const nextInterval = intervals[i + 1];
    // Merge case
    if (currentInterval[1] >= nextInterval[0]) {
      newIntervals.push([currentInterval[0], nextInterval[1]]);
    } else {
      newIntervals.push(nextInterval);
    }
  }
  return newIntervals;
};

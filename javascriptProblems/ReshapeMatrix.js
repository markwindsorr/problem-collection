/*
In MATLAB, there is a handy function called reshape which can reshape an m x n matrix into a new 
one with a different size r x c keeping its original data.

You are given an m x n matrix mat and two integers r and c representing the number of rows and 
the number of columns of the wanted reshaped matrix.

The reshaped matrix should be filled with all the elements of the original matrix in the 
same row-traversing order as they were.

If the reshape operation with given parameters is possible and legal, output the new reshaped 
matrix; Otherwise, output the original matrix.

NOT FINISHED ****
*/

const reshapeMatrix = (mat, r, c) => {
  // 1. Change og matrix to a singular array
  let singularArray = [];
  mat.forEach((row) => {
    singularArray.push(...row);
  });

  let responseMatrix = [];

  for (let i = 0; i < r; i += c) {
    const newRow = singularArray.slice(i, c);
    responseMatrix[i] = newRow;
  }

  return responseMatrix;
};

console.log(
  reshapeMatrix(
    [
      [1, 2],
      [3, 4],
    ],
    1,
    4
  )
);

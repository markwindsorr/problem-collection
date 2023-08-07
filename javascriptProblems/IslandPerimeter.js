/*
You are given row x col grid representing a map where grid[i][j] = 1 represents land and 
grid[i][j] = 0 represents water.

Grid cells are connected horizontally/vertically (not diagonally). The grid is completely 
surrounded by water, and there is exactly one island (i.e., one or more connected land cells).

The island doesn't have "lakes", meaning the water inside isn't connected to the water around 
the island. One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.

*/

function numofneighbour(mat, i, j) {
  let count = 0;

  // UP
  if (i > 0 && mat[i - 1][j] == 1) count++;

  // LEFT
  if (j > 0 && mat[i][j - 1] == 1) count++;

  // DOWN
  if (i < R - 1 && mat[i + 1][j] == 1) count++;

  // RIGHT
  if (j < C - 1 && mat[i][j + 1] == 1) count++;

  return count;
}

// Returns sum of perimeter of shapes
// formed with 1s
function findperimeter(mat) {
  let perimeter = 0;

  // Traversing the matrix and
  // finding ones to calculate
  // their contribution.
  for (let i = 0; i < R; i++)
    for (let j = 0; j < C; j++)
      if (mat[i][j] == 1) perimeter += 4 - numofneighbour(mat, i, j);

  return perimeter;
}

const grid = [
  [0, 1, 0, 0],
  [1, 1, 1, 0],
  [0, 1, 0, 0],
  [1, 1, 0, 0],
];

console.log(islandPerimeter(grid));

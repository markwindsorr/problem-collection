/*
 
 Number Of Islands
 
 Find Number of Islands in a Matrix
 
 */


func numIslands(_ grid: [[Character]]) -> Int {
    
    guard grid.count > 0 else {return 0}
    
    var g = grid
    var numberOfIslands = 0
    
    for i in 0..<grid.count{
        for j in 0..<grid[0].count {
            if g[i][j] == "1" {
                numberOfIslands += dfs(&g, i, j)
            }
        }
    }
    return numberOfIslands
}

func dfs(_ grid : inout [[Character]], _ i : Int, _ j : Int) -> Int{
    //Check if we've gone past indices of 2D array or if we find a 0
    if i < 0 || i >= grid.count || j < 0 || j >= grid[0].count || grid[i][j] == "0" {
        return 0
    }
    grid[i][j] = "0" //Assign 0 to grid once we've looked at that position to let know we've visited
    dfs(&grid, i+1, j) //look one down
    dfs(&grid, i-1, j) //look one up
    dfs(&grid, i, j+1) //look one to the right
    dfs(&grid, i, j-1) //look one to the left
    return 1
}


var inputMatrix = [
    [1,1,0],
    [1,1,0],
    [0,0,1]
]

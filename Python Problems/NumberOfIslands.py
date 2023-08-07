"""
Number Of Islands

Given a 2d grid map of '1's (land) and '0's (water), count the number of islands. 
An island is surrounded by water and is formed by connecting adjacent lands horizontally 
or vertically. You may assume all four edges of the grid are all surrounded by water.

"""

class Solution(object):
    
    def numIslands(self, grid):
        """
        :type grid: List[List[str]]
        :rtype: int
        """
        
        if len(grid) == 0:
            return 0
        
        num_of_islands = 0
        
        for i in range(0, len(grid)):
            for j in range(0, len(grid[0])):
                
                # If we find a 1 we'll send a dfs through the
                # grid assigning each explored coordinate to 0
                if grid[i][j] == "1":
                    num_of_islands = num_of_islands + self.dfs(grid, i, j)
            
        return num_of_islands
        
    # This depth first search will traverse the grid
    # looking one direction at a time until 
    def dfs(self, grid, i, j):

        # Check to see if we've gone out of bounds or
        # if we find a zero
        if i < 0 or j < 0 or i >= len(grid) or j >= len(grid[0]) or grid[i][j] == "0":
            return 0

        grid[i][j] = "0"
        self.dfs(grid, i+1, j) # Look 1 down
        self.dfs(grid, i-1, j) # Look 1 up
        self.dfs(grid, i, j+1) # Look 1 right
        self.dfs(grid, i, j-1) # Look 1 Left

        return 1


































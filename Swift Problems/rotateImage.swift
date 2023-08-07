/*
 
 Rotate Image
 
 You are given an n x n 2D matrix representing an image
 
 Rotate the image by 90 degrees clockwise
 
 
 Given input matrix =
 [
 [1,2,3],
 [4,5,6],
 [7,8,9]
 ],
 
 rotate the input matrix in-place such that it becomes:
 [
 [7,4,1],
 [8,5,2],
 [9,6,3]
 ]
 
 */

func rotate(_ matrix : inout [[Int]]) -> [[Int]] {
    
    for i in 0..<matrix.count {
        for j in i+1..<matrix[i].count {
            let t = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = t
        }
        matrix[i].reverse()
    }
    
    return matrix
}


var inputMatrix = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
]

let result = rotate(&inputMatrix)
print(result)

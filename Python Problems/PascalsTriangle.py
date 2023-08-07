"""
Pascal's Triangle

Given a non-negative integer numRows, generate the first numRows of Pascal's triangle.

triangle[i][j] = triangle[i-1][j-1] + triangle[i-1][j]

"""

class PascalsTriangle(object):

	def generate(self, num_rows):
		if num_rows == 0:
			return []
		if num_rows == 1:
			return [[1]]

		# allocate space
		triangle = []
		for i in range(0, num_rows):
			row = []
			for j in range(0, i+1):
				row.append(0)
			triangle.append(row)

		for i in range(0, num_rows):

			for j in range(0, i+1):

				if j == i or j == 0:
					triangle[i][j] = 1
				else:
					triangle[i][j] = triangle[i-1][j-1] + triangle[i-1][j] 

		return triangle


pascals_triangle = PascalsTriangle()
print(pascals_triangle.generate(10))









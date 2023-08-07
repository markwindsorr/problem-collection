"""
Pascals Triangle II

Given a non-negative index k where k < 33, return the kth index row of the Pascal's triangle.
Note that the row index starts from 0.

"""


class PascalsTriangleTwo():

	def get_row(self, row_index):

		if row_index == 0:
			return [1]
		if row_index == 1:
			return [1, 1]

		# Allocate zeroes
		triangle = []
		for i in range(0, row_index+1):
			row = []
			for j in range(0, i+1):
				row.append(0)
			triangle.append(row)

		# Build Pascals Triangle & Return
		for i in range(0, row_index+1):
			for j in range(0, i+1):
				if i == j or j == 0:
					triangle[i][j] = 1
				else:
					triangle[i][j] = triangle[i-1][j-1] + triangle[i-1][j]
			if i == row_index:
				return triangle[i]

pascal = PascalsTriangleTwo()
print(pascal.get_row(100))





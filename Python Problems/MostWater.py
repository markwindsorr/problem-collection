"""

Container With Most Water

"""

def max_area(height):

	if len(height) == 0:
		return 0

	max_vol = 0

	for i in range(0, len(height)-1):
		for j in range(i+1, len(height)):
			current_vol = abs(i-j) * min(height[i], height[j])
			if current_vol > max_vol:
				max_vol = current_vol

	return max_vol

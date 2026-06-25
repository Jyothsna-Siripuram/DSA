# Container With Most Water
# You are given an integer array height of length n. There are n vertical
# lines drawn such that the two endpoints of the ith line are (i, 0) and 
# (i, height[i]).
# Find two lines that together with the x-axis form a container, such 
# that the container contains the most water.
# Return the maximum amount of water a container can store.

# Example 1:
# Input: height = [1,8,6,2,5,4,8,3,7]
# Output: 49
# Explanation: The above vertical lines are represented by 
# array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water 
# (blue section) the container can contain is 49.
# Example 2:
# Input: height = [1,1]
# Output: 1
 
# Constraints:
# n == height.length
# 2 <= n <= 105
# 0 <= height[i] <= 104

#bruteforce logic
height = [1,8,6,2,5,4,8,3,7]
# height = [1,1]
def max_area(height)
    max_area = 0
    (0...height.length).each do |i|
        (i+1...height.length).each do |j|
            width = j - i
            curr_min_length = [height[i], height[j]].min
            area = width * curr_min_length
            max_area = [area, max_area].max
        end
    end
    max_area
end
p max_area(height)
def max_area(height)
    max_area = 0
    left = 0
    right = height.length - 1
    while left < right do
        width = right - left
        curr_length = [height[left], height[right]].min
        area = width * curr_length
        max_area = [max_area, area].max
        if height[left] <= height[right]
            left += 1
        else
            right -= 1
        end
    end
    max_area
end
p max_area(height)

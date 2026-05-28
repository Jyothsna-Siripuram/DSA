# Maximum Product Subarray
# Given an integer array nums, find a subarray that has the largest product, and return the product.

# The test cases are generated so that the answer will fit in a 32-bit integer.

# Note that the product of an array with a single element is the value of that element.

# Example 1:
# Input: nums = [2,3,-2,4]
# Output: 6
# Explanation: [2,3] has the largest product 6.
# Example 2:
# Input: nums = [-2,0,-1]
# Output: 0
# Explanation: The result cannot be 2, because [-2,-1] is not a subarray.
 
# Constraints:
# 1 <= nums.length <= 2 * 104
# -10 <= nums[i] <= 10
# The product of any subarray of nums is guaranteed to fit in a 32-bit integer.

def max_product(nums)
    result = nums[0]
    current_min = nums[0]
    current_max = nums[0]
    
    (1...nums.length).each do |i|
        #
        temp_max = [
            nums[i],
            current_max * nums[i],
            current_min * nums[i]
        ].max
        # current_max = [nums[i], current_max * nums[i], current_min * nums[i]].max
        current_min = [nums[i], current_max * nums[i], current_min * nums[i]].min
        current_max = temp_max
        result = [result, current_max].max
    end
    result
end

nums = [2,3,-2,4]
# nums = [-2,0,-1]
# nums = [-2,3,-4] 
# nums = [-4, -3, -2]
p max_product(nums)

# Maximum Product Subarray — Revision Steps
# Maximum product of any contiguous subarray. Track both running max and running min - 
# negatives swap them.
# Keep:
# current_max
# current_min
# result
# Why current_min?
# Negative × Negative = Positive
# Smallest product can become biggest later
# For every number:
# Calculate:
# num
# current_max * num
# current_min * num
# Update:
# biggest → current_max
# smallest → current_min
# Update final answer:
# result = [result, current_max].max
# Maximum Subarray
# Given an integer array nums, find the subarray with the largest sum, and return its sum.

# Example 1:
# Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
# Output: 6
# Explanation: The subarray [4,-1,2,1] has the largest sum 6.

# Example 2:
# Input: nums = [1]
# Output: 1
# Explanation: The subarray [1] has the largest sum 1.

# Example 3:
# Input: nums = [5,4,-1,7,8]
# Output: 23
# Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.
 
# Constraints:
# 1 <= nums.length <= 105
# -104 <= nums[i] <= 104
 
# Follow up: If you have figured out the O(n) solution, try coding another solution using the divide 
# and conquer approach, which is more subtle.
# bruteforce logic
def max_sub_array(nums)
    sub_array_sum = 0
    max_sum = 0
    (0...nums.length).each do |i|
        current_sum = 0
        (i...nums.length).each do |j|
            current_sum += nums[j]
            if current_sum > max_sum
                max_sum = [max_sum, current_sum].max
            end
        end
    end
    max_sum
end

def max_sub_array(nums)
    current_sum = nums[0]
    max_sum = nums[0]
    (1...nums.length).each do |i|
        current_sum = [nums[i], current_sum + nums[i]].max
        max_sum = [max_sum, current_sum].max
    end
    max_sum
end

# nums = [-2,1,-3,4,-1,2,1,-5,4]
nums = [1]
nums = [5,4,-1,7,8]
p max_sub_array(nums)


# For every number in the array:

# Keep a running sum (current_sum)
# Keep the best maximum sum (max_sum)
# At each element:
# Either:
# start a new subarray from current element
# OR continue previous subarray
# Choose the better one:
# current_sum = max(num, current_sum + num)
# Update maximum answer:
# max_sum = max(max_sum, current_sum)

# Easy Memory Trick
# Ask at every element:
# “Should I continue the previous subarray or start fresh from here?”

# Given a binary array nums, return the maximum length of a contiguous subarray with an equal number of 0 
# and 1.

# Example 1:
# Input: nums = [0,1]
# Output: 2
# Explanation: [0, 1] is the longest contiguous subarray with an equal number of 0 and 1.

# Example 2:
# Input: nums = [0,1,0]
# Output: 2
# Explanation: [0, 1] (or [1, 0]) is a longest contiguous subarray with equal number of 0 and 1.

# Example 3:
# Input: nums = [0,1,1,1,1,1,0,0,0]
# Output: 6
# Explanation: [1,1,1,0,0,0] is the longest contiguous subarray with equal number of 0 and 1.

# Constraints:
# 1 <= nums.length <= 105
# nums[i] is either 0 or 1.

##Bruteforce logic
def find_max_length(nums)
    max_length = 0
    (0...nums.length).each do |i|
        zeros = 0
        ones = 0
        (i...nums.length).each do |j|
            zeros += 1 if nums[j] == 0
            ones += 1 if nums[j] == 1
            if ones == zeros
                length = j - i + 1
                max_length = [length, max_length].max
            end
        end
    end
    p max_length
end
# nums = [0,1,1,1,1,1,0,0,0]
# nums = [0,1,0]
nums = [0,1]
find_max_length(nums)
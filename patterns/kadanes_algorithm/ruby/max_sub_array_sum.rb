
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
# 1 <= nums.length <= 10^5
# -10^4 <= nums[i] <= 10^4

# Kadane's Algorithm: O(n) time, O(1) space

def max_sub_array(nums)
  return 0 if nums.empty?

  current_sum = nums[0]
  max_sum = nums[0]

  (1...nums.length).each do |i|
    current_sum = [nums[i], current_sum + nums[i]].max
    max_sum = [max_sum, current_sum].max
  end

  max_sum
end

# Optional brute-force implementation for comparison

def max_sub_array_bruteforce(nums)
  max_sum = -Float::INFINITY

  (0...nums.length).each do |i|
    current_sum = 0
    (i...nums.length).each do |j|
      current_sum += nums[j]
      max_sum = [max_sum, current_sum].max
    end
  end

  max_sum
end

if __FILE__ == $PROGRAM_NAME
  examples = [
    [-2, 1, -3, 4, -1, 2, 1, -5, 4],
    [1],
    [5, 4, -1, 7, 8]
  ]

  examples.each do |nums|
    puts "nums = #{nums.inspect} => #{max_sub_array(nums)}"
  end
end

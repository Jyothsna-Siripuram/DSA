#problem:
# Given an array of integers nums and an integer k, return the total number of subarrays whose sum equals to k.
# A subarray is a contiguous non-empty sequence of elements within an array.

# Example 1:
# Input: nums = [1,1,1], k = 2
# Output: 2

# Example 2:
# Input: nums = [1,2,3], k = 3
# Output: 2

# Constraints:
# 1 <= nums.length <= 2 * 104
# -1000 <= nums[i] <= 1000
# -107 <= k <= 107
 
#bruteforce logic: (Time Complexity: O(n*2))
def subarray_sum(nums, k)
    count = 0
    (0...nums.length).each do |i|
        sum = 0
        (i...nums.length).each do |j|
            sum += nums[j]
            if sum == k
                count += 1
            end
        end
    end
    count
end
# nums = [1,1,1]
# k = 2
# nums = [1,2,3]
# k = 3
# puts subarray_sum(nums, k)

# using pattern O(n)
def subarray_sum(nums, k)
    prefix_sum = 0
    count = 0
    prefix_freq = Hash.new(0)
    prefix_freq[0] = 1
    (0...nums.length).each do |i|
        prefix_sum += nums[i]
        count += prefix_freq[prefix_sum - k]
        prefix_freq[prefix_sum] += 1 
    end
    count
end
# nums = [1,1,1]
# k = 2
nums = [1,2,3]
k = 3
puts subarray_sum(nums, k)
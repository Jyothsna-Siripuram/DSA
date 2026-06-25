# 75. Sort Colors
# Given an array nums with n objects colored red, white, or blue, sort 
# them in-place so that objects of the same color are adjacent, with the 
# colors in the order red, white, and blue.
# We will use the integers 0, 1, and 2 to represent the color red, white,
# and blue, respectively.
# You must solve this problem without using the library's sort function.

# Example 1:
# Input: nums = [2,0,2,1,1,0]
# Output: [0,0,1,1,2,2]
# Example 2:
# Input: nums = [2,0,1]
# Output: [0,1,2]
# Constraints:
# n == nums.length
# 1 <= n <= 300
# nums[i] is either 0, 1, or 2.

#bruteforce
nums = [2,0,2,1,1,0]
def sort_colors(nums)
    n = nums.length
    (0...n).each do |i|
        (0...n-i-1).each do |j|
            if nums[j] > nums[j+1]
                nums[j], nums[j+1] = nums[j+1], nums[j]
            end
        end
    end
    nums
end
p sort_colors(nums)
def sort_colors(nums)
    zeros = nums.count {|n| n == 0}
    ones = nums.count {|n| n == 1}
    twos = nums.count {|n| n == 2}
    [0] * zeros + [1] * ones + [2] * twos
end
p sort_colors(nums)

#optimal solution

def sort_colors(nums)
    low = 0
    mid = 0
    high = nums.length - 1
    while mid <= high do
        if nums[mid] == 0
            nums[low], nums[mid] = nums[mid], nums[low]
            low += 1
            mid += 1
        elsif nums[mid] == 1
            mid += 1
        else
            nums[mid], nums[high] = nums[high], nums[mid]
            high -= 1
        end
    end
    nums
end
p sort_colors(nums)





# The brute force approach is to sort the array using built-in sort, 
# which takes O(n log n).

# A slightly better counting approach counts the number of 0s, 1s, and 
# 2s, then overwrites the array. This takes O(n) time and O(1) space, 
# but it requires two passes.

# The optimal approach is Dutch National Flag using three pointers 
# in one pass.
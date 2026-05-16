# Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the 
# non-zero elements.
# Note that you must do this in-place without making a copy of the array.

# Example 1:
# Input: nums = [0,1,0,3,12]
# Output: [1,3,12,0,0]

# Example 2:
# Input: nums = [0]
# Output: [0]
 
# Constraints:
# 1 <= nums.length <= 104
# -231 <= nums[i] <= 231 - 1

#bruteforce logic
def move_zeros(nums)
    # no_of_zeros = nums.count(0)
    # non_zero_nums = nums.select { |n| n != 0}
    # non_zero_nums + ( [0] * no_of_zeros)
    no_of_zeros = nums.count(0)
    nums.reject! {|n| n == 0}
    nums.append([0] * no_of_zeros).flatten!
end

#using pattern
def move_zeros(nums)
    j = 0
    (0...nums.length).each do |i|
        if nums[i] != 0
            nums[i], nums[j] = nums[j], nums[i]
            j += 1
        end
    end
    nums
end

nums = [0,1,0,3,12]
p move_zeros(nums)
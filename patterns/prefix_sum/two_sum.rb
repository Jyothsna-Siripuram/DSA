# pattern logic
def prefix_sum(arr)
#   prefix_sum = [arr[0]] 
   (1...arr.length).each do |i|
    #   prefix_sum[i] = prefix_sum[i-1] + arr[i]
        arr[i] = arr[i-1] + arr[i]
   end
  arr
end
arr = [3, 7, 2, 5, 8]
puts prefix_sum(arr)
# Formula:
# sum = @nums[right] - @nums[left - 1] 
# Range Sum Query - Immutable
# Input:
# ["NumArray", "sumRange", "sumRange", "sumRange"]
# [[[-2, 0, 3, -5, 2, -1]], [0, 2], [2, 5], [0, 5]]
# Output
# [null, 1, -1, -3]
# Explanation:
# NumArray numArray = new NumArray([-2, 0, 3, -5, 2, -1]);
# numArray.sumRange(0, 2); // return (-2) + 0 + 3 = 1
# numArray.sumRange(2, 5); // return 3 + (-5) + 2 + (-1) = -1
# numArray.sumRange(0, 5); // return (-2) + 0 + 3 + (-5) + 2 + (-1) = -3
# Constraints:
# 1 <= nums.length <= 104
# -105 <= nums[i] <= 105
# 0 <= left <= right < nums.length
# At most 104 calls will be made to sumRange.

#bruteforce (Time Complexity: O(n*2))
class NumArray
    def initialize(nums)
        @nums = nums
    end
    def sum_range(left, right)
        sum = 0
        (left...right+1).each do |i|
            sum += @nums[i]
        end
        sum
    end
end
# Your NumArray object will be instantiated and called as such:
numArray = NumArray.new([-2, 0, 3, -5, 2, -1])
puts numArray.sum_range(0, 2) # return (-2) + 0 + 3 = 1
puts numArray.sum_range(2, 5) # return 3 + (-5) + 2 + (-1) = -1
puts numArray.sum_range(0, 5) # return (-2) + 0 + 3 + (-5) + 2 + (-1) = -3

#sum of elements between two indices of an array using prefix_sum pattern

class NumArray
    def initialize(nums)
        @nums = nums
        (1...@nums.length).each do |i|
            @nums[i] = @nums[i-1] + @nums[i]
        end
    end
    def sum_range(left, right)
        if left == 0
            @nums[right]
        else
            @nums[right] - @nums[left - 1] 
        end
    end
end
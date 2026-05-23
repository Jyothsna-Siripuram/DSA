# Problem Statement. 
# Given a sorted array arr of length n and a target value x, return any index i such that 
# arr[i] = x, or -1 if x is not present.
# Example. arr = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19], x = 13 → 6
arr = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
x = 13

def binary_search(arr, target)
    left = 0
    right = arr.length - 1
    while left < right do
        mid = (right + left)/2
        puts "#{mid} => #{arr[mid]}"
        if arr[mid] == target
            # p arr[mid], mid
            return mid
        elsif arr[mid] > target
            right -= 1
        else
            left += 1
        end
    end
    -1
end

p binary_search(arr, x)
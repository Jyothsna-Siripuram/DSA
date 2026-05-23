
# Problem Statement. 
# Given an array arr of length n and a target value x, return the smallest index i such that arr[i] = x, 
# or -1 if no such index exists. The array need not be sorted.
# Example. arr = [3, 1, 4, 1, 5, 9, 2, 6, 7, 8], x = 7 → 8
#bruteforce 
arr = [3,1,4,1,5,9,2,6,7,8]
target = 7
def linear_search(arr, target)
    arr.each_with_index do |index, ele|
        return index if arr[index] == target
    end
    return -1
end
p linear_search(arr, target)
# When to Use Linear Search:
# Array is unsorted, small, or you'll search only once. Sorting first costs O(n log n) — pointless if 
# you only need one lookup. Also: linear search of a linked list is the only option (no random access).
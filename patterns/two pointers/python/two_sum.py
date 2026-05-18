# def two_sum_sorted(arr, target):
#     l, r = 0, len(arr) - 1
#     while l < r:
#         s = arr[l] + arr[r]
#         if s == target: return [l, r]
#         elif s < target: l += 1
#         else: r -= 1
#     return [-1, -1]

# arr = [2,7,11,15]
# target = 9
# arr = [2,3,4]
# target = 6
# arr = [-1,0]
# target = -1
# print(two_sum_sorted(arr, target))

# Input: arr[] = [-1, 1, 5, 5, 7], target = 6
# Output: 3
# Explanation: There are 3 pairs which sum up to 6 : {1, 5}, {1, 5} and {-1, 7}.
# arr = [-1, 1, 5, 5, 7]
# target = 6
arr = [1, 1, 1, 1]
target = 2
def two_sum_arr_count(arr, target):
    l,r = 0, len(arr) - 1
    count = 0
    while l < r:
        sum = arr[l] + arr[r]
        # if sum == target:
        #     print([arr[l],arr[r]])
        #     # print([l,r])
        #     counter += 1
        #     l += 1
        #     r -= 1
        if sum < target:
            l += 1
        elif sum > target:
            r -= 1
        else:
            # Case 1: values are different
            if arr[l] != arr[r]:
                left_count = 0
                right_count = 0
                left_value = arr[l]
                right_value = arr[r]
                while l < r and arr[l] == left_value:
                    left_count += 1
                    l += 1
                while r > 0 and arr[r] == right_value:
                    right_count += 1
                    r -= 1
                count += left_count * right_count
            # Case 1: values are same
            else:
                n = r - l + 1
                count += n * (n - 1) // 2
                break
    print(count)
two_sum_arr_count(arr, target)
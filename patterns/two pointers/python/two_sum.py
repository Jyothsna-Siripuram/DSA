def two_sum_sorted(arr, target):
    l, r = 0, len(arr) - 1
    while l < r:
        s = arr[l] + arr[r]
        if s == target: return [l, r]
        elif s < target: l += 1
        else: r -= 1
    return [-1, -1]

# arr = [2,7,11,15]
# target = 9
# arr = [2,3,4]
# target = 6
arr = [-1,0]
target = -1
print(two_sum_sorted(arr, target))

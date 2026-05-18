#bruteforce
def remove_duplicates(arr):
    for i in range(0, len(arr)-1):
        if arr[i] == arr[i+1]:
            ele = arr.pop(i+1)
            arr.append(ele)
    return arr

# using pattern
def remove_duplicates(arr):
    j = 0
    for i in range(0, len(arr)):
        if arr[i] != arr[j]:
            j += 1
            arr[i], arr[j] = arr[j], arr[i]
    return arr


arr = [1,1,2,3,3,4]

print(remove_duplicates(arr))
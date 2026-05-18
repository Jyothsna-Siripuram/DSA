#bruteforce logic
def remove_duplicates(arr)
    (0...arr.length).each do |i|
        arr << arr.delete_at(i+1) if arr[i] == arr[i+1]
    end
    p arr
end

# using pattern
def remove_duplicates(arr)
   j = 0
    (1...arr.length).each do |i|
        p arr
        if arr[i] != arr[j]
            j += 1
            arr[i], arr[j] = arr[j], arr[i]
        end
    end
    arr
end

arr = 1,1,2,3,3,4
remove_duplicates(arr)
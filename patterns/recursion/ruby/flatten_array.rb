# Input: [1,[2,3],[4,5][6],[[7,8]]]
 
# output: [1,2,3,4,5,6,7,8]
arr = [1,[2,3],[4,5],[6],[[7,8]]]
def flatten_array(arr, result=[])
    arr.each do |ele|
        if ele.is_a?(Array)
            flatten_array(ele, result)
        else
            result << ele
        end
    end
    result
end
p flatten_array(arr, result=[])
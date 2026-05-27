# Given two strings s and p, return an array of all the start indices of p's anagrams in s. 
# You may return the answer in any order.

# Example 1:
# Input: s = "cbaebabacd", p = "abc"
# Output: [0,6]
# Explanation:
# The substring with start index = 0 is "cba", which is an anagram of "abc".
# The substring with start index = 6 is "bac", which is an anagram of "abc".

# Example 2:
# Input: s = "abab", p = "ab"
# Output: [0,1,2]
# Explanation:
# The substring with start index = 0 is "ab", which is an anagram of "ab".
# The substring with start index = 1 is "ba", which is an anagram of "ab".
# The substring with start index = 2 is "ab", which is an anagram of "ab".
 
# Constraints:
# 1 <= s.length, p.length <= 3 * 104
# s and p consist of lowercase English letters.
#bruteforce logic
def find_anagrams(s, p)
    result = []
    (0...s.length).each do |i|
        (i...s.length).each do |j|
            # p s[i..j]
            result << i if s[i..j].chars.sort == p.chars.sort
        end
    end
    p result
end
# s = "cbaebabacd"
# p = "abc"
# find_anagrams(s, p)
# s = "abab"
# p = "ab"
# find_anagrams(s, p)

#using pattern
def  find_anagrams(s, p)
    result = []

    k = p.length
    target = p.chars.sort

    sub_str = s[0...k].chars

    result << 0 if sub_str.sort == target

    (k...s.length).each do |i|
        sub_str.shift          # remove first char
        sub_str << s[i]        # add new char

        start_index = i - k + 1

        result << start_index if sub_str.sort == target
    end
    p result
end
s = "abab"
p = "ab"
find_anagrams(s, p)
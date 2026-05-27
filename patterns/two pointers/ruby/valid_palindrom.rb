# Valid polindrome
# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing
# all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters 
# include letters and numbers.
# Given a string s, return true if it is a palindrome, or false otherwise.
# Example 1:
# Input: s = "A man, a plan, a canal: Panama"
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.
# Example 2:
# Input: s = "race a car"
# Output: false
# Explanation: "raceacar" is not a palindrome.
# Example 3:
# Input: s = " "
# Output: true
# Explanation: s is an empty string "" after removing non-alphanumeric characters.
# Since an empty string reads the same forward and backward, it is a palindrome.
# Constraints:
# 1 <= s.length <= 2 * 105
# s consists only of printable ASCII characters.

#bruteforce logic
def is_palindrome(s)
    s.gsub!(/[^a-zA-Z0-9]/, "").downcase!
    s == s.reverse
end

#using pointers
def is_palindrome(s)
    s = s.downcase.gsub(/[^a-z0-9]/, "")
    left = 0
    right = s.length - 1
    while left < right do
       if s[left] != s[right]
           return false 
       end
       left += 1
       right -= 1
    end
    true
end
s ="A man, a plan, a canal: Panama"
p is_palindrome(s)

# Steps to Check Palindrome String

# Start one pointer from the beginning of the string.
# Start another pointer from the end of the string.
# Compare the characters at both pointers.
# If characters are different, the string is not a palindrome.
# If characters are the same, move both pointers toward the center.
# Repeat until pointers meet or cross.
# If all characters matched, the string is a palindrome.
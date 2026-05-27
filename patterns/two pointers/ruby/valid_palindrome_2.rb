# Valid Palindrome II
# Given a string s, return true if the s can be palindrome after deleting at most one character from it.

# Example 1:
# Input: s = "aba"
# Output: true

# Example 2:
# Input: s = "abca"
# Output: true
# Explanation: You could delete the character 'c'.

# Example 3:
# Input: s = "abc"
# Output: false

# Constraints:
# 1 <= s.length <= 105
# s consists of lowercase English letters.

def valid_palindrome_2(str)
    left = 0
    right = str.length - 1
    while left < right do
        if str[left] != str[right]
            return false 
        end
        left += 1
        right -= 1
    end
    true
end

def palindrome?(str, left, right)
    while left < right do
        if str[left] != str[right]
            return false
        end
        left += 1
        right -= 1
    end
    return true
end
def valid_palindrome_2(str)
    left = 0
    right = str.length - 1
    return true if palindrome?(str, left, right)
    while left < right do
        if str[left] != str[right]
            return palindrome?(str, left+1, right) || palindrome?(str, left, right-1)
        end
        left += 1
        right -= 1
    end
    return true
end

str = "aba"
# str = "abca"
# str = "abc"
p valid_palindrome_2(str)


# logical explainantion:::

# Start one pointer from the beginning and another from the end of the string.
# Compare both characters.
# If they are the same, move both pointers toward the center.
# If they are different, try removing one character:
# either skip the left character
# or skip the right character
# Check whether the remaining string becomes a palindrome.
# If yes, return true. Otherwise, return false.
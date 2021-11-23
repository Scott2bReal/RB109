# Given a non-empty string check if it can be constructed by taking a substring
# of it and appending multiple copies of the substring together. You may assume
# the given string consists of lowercase English letters only.
#
# Input: String
# Output: Boolean, describing whether or not string contains a substring which
# can be combined to exactly create the input string
#
# Algorithm:
#   Multiply slice that increases in size by 1 up to half of string size
#   If result equals the input string, return true
#   return false otherwise

def repeated_substring_pattern(string)
  1.upto(string.size / 2) do |slice_size|
    substring = string.slice(0, slice_size)
    return true if (substring * (string.size / slice_size)) == string
  end
  false
end

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true

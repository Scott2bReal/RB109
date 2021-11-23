# Given an array of strings made only from lowercase letters, return an array of
# all characters that show up in all strings within the given array (including
# duplicates).  For example, if a character occurs 3 times in all strings but
# not 4 times, you need to include that character three times in the final
# answer.
#
# Input: Array of strings
# Output: Array containing letters which appear in all strings. If letter
# appears multiple times in all strings, resulting array will contain that many
# instances
#
# Algorithm:
#   remove first word from input array
#   for each char in that word
#     use select to create output array
#       remove first letter of chars array
#       block should return true if remaining words in words array contain that
#       character

def common_chars(words)
  chars = words.shift
  chars.select do |char|
    words.all? { |word| word.sub!(char, '') }
  end
end

p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []

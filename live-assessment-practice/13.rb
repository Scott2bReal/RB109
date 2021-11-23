# Find the longest common prefix string amongst an array of strings
# If there is no common prefix, return an empty string
#
# Input: array of word strings
# Output: Longest common prefix string
#
# Algorithm:
#   init prefix = ''
#   make array of chars by removing first word from array
#   for each char in test_word with index
#     for each word in words
#       if char at idx in all words is equal to char, add char to prefix

def common_prefix(words)
  prefix = ''
  test_word = words.shift
  chars = test_word.chars
  chars.each_with_index do |char, idx|
    prefix << char if words.all? { |word| word[idx] == char }
  end
  prefix
end

p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"

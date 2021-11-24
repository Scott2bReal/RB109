# Given a string that includes alphanumeric characters ('3a4B2d') return the
# expansion of that string: The numeric values represent the occurrence of each
# letter preceding that numeric value. There should be no numeric characters in
# the final string. Empty strings should return an empty string.
#
# The first occurrence of a numeric value should be the number of times each
# character behind it is repeated, until the next numeric value appears.
#
# If there are two consecutive numeric characters the first one is ignored.
#
# If there are two consecutive alphabetic characters then the first character
# has no effect on the one after it.
#
# Your code should be able to work for both lower and capital case letters.
#
# Input: String
# Output: Expanded string
#
# Algorithm:
#   Init multiplier = 1
#   Split string into characters array
#   For each character (use map)
#     if character is a number, reassign multiplier to that number as an int and
#     return an empty string
#     else
#       block should return character * multiplier
#   join array that results from the map call
#
def string_expansion(string)
  multiplier = 1
  chars = string.chars
  expanded_words = chars.map do |char|
    if char.match?(/[0-9]/)
      multiplier = char.to_i
      ''
    else
      char * multiplier
    end
  end
  expanded_words.join('')
end

p string_expansion('') == ''
p string_expansion('3abc') == 'aaabbbccc'       # correct
p string_expansion('3abc') != 'aaabc'           # wrong
p string_expansion('3abc') != 'abcabcabc'       # wrong
p string_expansion('abcde') == 'abcde'
p string_expansion('3d332f2a') == 'dddffaa'
p string_expansion('3D2a5d2f') == 'DDDaadddddff'

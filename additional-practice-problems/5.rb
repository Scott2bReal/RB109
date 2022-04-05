# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.
#
# Algorithm:
#   Downcase whole string, make array of only chars (variable name chars)
#   init letter_counts = Hash.new([])
#   for each char in chars
#     hash key of char count in chars << char
#   return first item in first key of hash

def least_common_char(string)
  chars = string.downcase.chars
  least_common = chars[0]

  chars.each do |char|
    least_common = char if chars.count(char) < chars.count(least_common)
  end

  least_common
end

# Examples:

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

# The tests above should print "true".

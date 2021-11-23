# Given two strings, write a method that returns true if a portion of the str1
# characters can be rearranged to match str2 otherwise return false
#
# Input: Two strings
# Output: boolean, describing whether or not a portion of string1 can be
# rearranged to match string2
#
# Algorithm:
#   select chars in string1 that appear in string2
#   for each char in string2
#     return false if count in string1 is less than in string2
#

def scramble(string1, string2)
  string2.each_char do |char|
    return false if string1.count(char) < string2.count(char)
  end
  true
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true

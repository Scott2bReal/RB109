=begin

Simple, given a string of words, return the length of the shortest word(s).

String will never be empty and you do not need to account for different data types.

Algorithm:
  Split string to array of words
  map length of words
  return min of that resulting array

=end

def find_short(string)
  string.split(' ').map(&:length).min
end

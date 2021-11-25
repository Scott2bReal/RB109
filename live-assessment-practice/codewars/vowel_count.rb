=begin

Return the number (count) of vowels in the given string.

We will consider a, e, i, o, u as vowels for this Kata (but not y).

The input string will only consist of lower case letters and/or spaces.

Input: String
Output: Integer, number of vowels

Algorithm:
  Init vowels = array of vowels
  Break string into characters
  select chars that are vowels, return size of that array

=end

def get_count(string)
  vowels = %w(a e i o u)
  string.downcase.chars.select { |char| vowels.include?(char) }.size
end

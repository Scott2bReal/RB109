=begin

Write a method that takes a string argument and returns a new string that
contains the value of the original string with all consecutive duplicate
characters collapsed into a single character.

Input: String
Output: String with consecutive duplicate characters collapsed into just one
character

Algorithm:
  Split string into array of chars and save with local variable
  init local variable working_char = ''
  init local variable working_string = ''
  for each character
    - as long the current char is not the same as the working_char, set
    working_char equal to current
    - add working_char to working_string

  return working string

=end

def duplicate_collapse(string)
  chars = string.chars
  working_char = ''
  working_string = ''

  chars.each do |char|
    if working_char != char
      working_char = char
      working_string << working_char
    end
  end

  working_string
end

p duplicate_collapse('aabbcc') == 'abc'
p duplicate_collapse('aaccaabb') == 'acab'
p duplicate_collapse('abc') == 'abc'
p duplicate_collapse('') == ''

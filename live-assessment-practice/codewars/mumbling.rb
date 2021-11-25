=begin

This time no story, no theory. The examples below show you how to write function accum:

Examples:

accum("abcd") -> "A-Bb-Ccc-Dddd"
accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt") -> "C-Ww-Aaa-Tttt"

Problem:
  Given an input string which contains only letters from a..z and A..Z, return a
  string which contains each letter, repeated n number of times, n being the
  position in which the letter appeared in the original string. The first letter
  should be uppercase and the rest downcase, regardless of the case in which the
  letter originally appears

Algorithm:
  - Init new array called repeated_letters which will contain the strings to
  join and return
  - Split string into characters
  - For each character in chars (with_index)
    - Add char upcased to repeated_letters
    - index number of times, add char downcased to repeated_letters
  - Join and return repeated_letters separated by '-'

=end

def accum(string)
  string.chars.map.with_index { |letter, idx| letter.upcase + (letter.downcase * idx) }.join('-')
end

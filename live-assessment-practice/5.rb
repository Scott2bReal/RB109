# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm: Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes
# C).  Then return this modified string.
#
# Input: String
# Output: String with letters replaced with the letter 3 forward in the alphabet
#
# Rules:
#   Return same string?
#   If 'x' 'y' or 'z', wrap around to 'a' 'b' 'c'
#   Case sensitive, i.g. 'X' wraps to 'A'
#   Only letters, special characters and spaces remain the same
#
# Algorithm:
#   Split into array of chars
#   For each char (with index)
#   If char is a letter (use regex)
#     determine new char using ord and char
#     conditional for if need to wrap
#     reassign char and idx in original string object
#   Return original string object
#     
def wrap_letter(letter)
  ((letter.ord) - 26).chr
end

def change_letter(letter)
  new_char = (letter.ord + 3).chr     
  new_char = wrap_letter(new_char) if letter.match?(/[X-Zx-z]/)
  new_char
end

def letter_changes(string)
  string.chars.each_with_index do |char, idx|
    if char.match?(/[A-Za-z]/)
      string[idx] = change_letter(char)
    end
  end
  string
end

p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')

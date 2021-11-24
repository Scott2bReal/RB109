=begin

In this kata you are required to, given a string, replace every letter with its
position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.

Input: String
Output: Alphabet position numbers of alphabetic characters (as a string)

Algorithm:
  - Create an alphabet
    - initialize alphabet_hash = {}
    - for each character in range a-z to_a (with index)
      - make key of alphabet_hash letter, and value is idx + 1
  - init chars set to string.downcase.chars
  - delete all characters which are not letters
  - save positions as map over the array of characters
    - block should return value corresponding to the key in alphabet_hash
  - join positions array sep by ' '


=end

def make_alphabet_hash
  alphabet_hash = {}

  ('a'..'z').each_with_index do |letter, idx|
    alphabet_hash[letter] = idx + 1
  end
  
  alphabet_hash
end

def alphabet_position(string)
  alphabet_hash = make_alphabet_hash
  chars = string.downcase.chars

  chars.delete_if { |char| char.match?(/[^a-z]/) }

  positions = chars.map do |char|
    alphabet_hash[char]
  end

  positions.join(' ')
end

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"

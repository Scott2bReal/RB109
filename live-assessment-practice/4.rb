# Given a word, create a hash which stores the indexes of each letter in an array.
# Make sure the letters are the keys.
# Make sure the letters are symbols.
# Make sure the indexes are stored in an array and those arrays are values.
#
# Input: String
# Output: Hash, keys are symbols of each letter, values are arrays with index of
# each appearance of that letter in input string
#
# Algorithm:
#   make array of chars of input string
#   init letters_hash, defaul value empty array
#   for each char with index
#     add index to value array at key letter to symbol of letters_hash
#   return letters hash

def map_letters(string)
  letters = {}
  chars = string.chars
  chars.each_with_index do |char, idx|
    letters.has_key?(char.to_sym) ? letters[char.to_sym] << idx : letters[char.to_sym] = [idx]
  end
  letters
end

p map_letters("froggy") == { :f => [0], :r=>[1], :o=>[2], :g=>[3, 4], :y=>[5] }
p map_letters("dodo") == { :d=>[0, 2], :o=>[1, 3] }
p map_letters("grapes") == { :g=>[0], :r=>[1], :a=>[2], :p=>[3], :e=>[4], :s=>[5] }

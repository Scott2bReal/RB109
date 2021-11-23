# Find if there is a substring that appears in both strings
# You will return true if you find one, or false if you do not
#
# Input: Two strings
# Output: boolean, if same substring appears in both strings
#
# Rules:
#   Case insensitive
#   empty string doesnt count as substring
#   must be at least length 2
#
# Algorithm:
#   Init slice_size
#   For each consecutive slice in string1.downcase
#     if joined slice is same as string2.downcase
#       return true

def substring_test(string1, string2)
  slice_size = 2
  until slice_size > string1.size
    string1.downcase.chars.each_cons(slice_size) do |slice|
      return true if string2.downcase.include?(slice.join(''))
    end
    slice_size += 1
  end
  false
end

p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true

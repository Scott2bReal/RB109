# Find the length of the longest substring in the given string
# that is the same in reverse
#
# Input: String
# Length of longest substring that is a palindrome
#
# Algorithm:
#   init slice_size = 1
#   init palindrome_size = 0
#   for each consecutive slice of size slice_size
#     if slice.join is a palindrome, update palindrome_size so slice size
#   return palindrome_size

def longest_palindrome(string)
  slice_size = 1
  palindrome_size = 0
  until slice_size > string.size
    string.chars.each_cons(slice_size) do |slice|
      palindrome_size = slice.size if slice.join('').reverse == slice.join('')
    end
    slice_size += 1
  end
  palindrome_size
end

p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d") == 9

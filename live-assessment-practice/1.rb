# Write a method that takes an array of consecutive (increasing) letters as
# input and that returns the missing letter in the array.
#
# Input: Array of increasing letters
# Output: Missing letter
#
# Rules:
#   All uppercase or lowercase?
# 
# Algorithm:
#   use map to create array of the ord of each char in input array
#   step through the array, and if next number is 2 greater than current, return
#   character of current number + 1
#
def determine_missing_letter(letters)
  numbers = letters.map { |letter| letter.ord }
  numbers.each_with_index do |number, idx|
    return (number + 1).chr if numbers[idx + 1] == number + 2
  end
end

p determine_missing_letter(['a','b','c','d','f']) == 'e'
p determine_missing_letter(['O','Q','R','S']) == 'P'

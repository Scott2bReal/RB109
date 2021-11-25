=begin

In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.
Examples

high_and_low("1 2 3 4 5")  # return "5 1"
high_and_low("1 2 -3 4 5") # return "5 -3"
high_and_low("1 9 3 4 -5") # return "9 -5"

Notes

    All numbers are valid Int32, no need to validate them.
    There will always be at least one number in the input string.
    Output string must be two numbers separated by a single space, and highest number is first.

Input: String containing numbers
Output: Highest and lowest numbers, as a string comma separated

Algorithm:
  - Init highest_lowest = []
  - Separate string into array of chars by space
  - Iterate thru resulting array, use map to convert each char to_i
  - Add max value of that array to highest_lowest
  - Add min value of that array to highest_lowest
  - Return highest_lowest joined separated by space

=end

def high_and_low(string)
  highest_lowest = []
  numbers = string.split(' ').map(&:to_i)
  highest_lowest << numbers.max
  highest_lowest << numbers.min
  highest_lowest.join(' ')
end

high_and_low("1 2 3 4 5")  # return "5 1"
high_and_low("1 2 -3 4 5") # return "5 -3"
high_and_low("1 9 3 4 -5") # return "9 -5"

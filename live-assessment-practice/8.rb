# You will be given an array of numbers.  You have to sort the odd numbers in
# ascending order, while leaving the even numbers at their original positions.
#
# Input: Array of numbers
# Output: Array with odd numbers sorted in ascending order
#
# Algorithm:
#   Create and sort array of odd numbers
#   For each number in input array
#     If number is odd, block will remove and return first element in odds array

def sort_odd(array)
  odds = array.select(&:odd?).sort
  array.map do |num|
    num.odd? ? odds.shift : num
  end
end

p sort_odd([7, 1]) == [1, 7]
p sort_odd([5, 8, 6, 3, 4]) == [3, 8, 6, 5, 4]
p sort_odd([9, 8, 7, 6, 5, 4, 3, 2, 1, 0]) == [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]

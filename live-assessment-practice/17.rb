# Find an index where the sum of the integers to the left of the index is equal
# to the sum of the integers to the right of the index if none, return -1
#
# Input: Array of integers
# Output: Index where sum of inegers to the left is same as sum of integers to
# the right
#
# Rules:
#   Does not include number at that index
#
# Algorithm:
#   for each num in array with index
#     if sum of slice before == sum of slice after, return idx
#
def find_even_index(array)
  array.each_with_index do |_, idx|
    left_sum = array[0...idx].sum
    right_sum = array[idx + 1..-1].sum
    return idx if left_sum == right_sum
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

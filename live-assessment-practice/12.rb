# Find the maximum sum of a contiguous subsequence in an array of integers
#
# Input: Array of integers (could be empty)
# Output: Maximum sum of contiguous subsequence
#
# Algorithm
#   init sum = 0
#   init slice size = 1
#   for each consecutive slice size of slice size
#     if sum of slice > sum then sum = that sum

def max_sequence(array)
  sum = 0
  slice_size = 1
  until slice_size > array.size
    array.each_cons(slice_size) do |slice|
      sum = slice.sum if slice.sum > sum
    end
    slice_size += 1
  end
  sum
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

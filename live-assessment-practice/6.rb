# Given an array of n positive integers and s positive integers, find the
# minimal length of a contiguous subarray for which the sum > s.  If there isn't
# one, return 0 instead.
#
# Input: Array and an Integer
# Output: Minimal length of subarray of input array where sum of subarray is
# greater than the second argument
#
# Rules:
#   Return 0 if no subarray exisits
#
# Algorithm:
#   Iterate through input array in increasing sized slices, moving slice one
#   index at a time
#   init start_idx = 0
#   init combo_size = 1
#   loop
#     take slice of input array starting at start_idx, size of combo_size
#     if sum of that slice is greater than target_sum, return slice length
#     
def min_sub_length(array, target_sum)
  start_idx = 0
  combo_size = 1

  loop do
    break if combo_size > array.size

    slice = array.slice(start_idx, combo_size)
    return slice.size if slice.sum > target_sum

    start_idx += 1
    if slice.size + start_idx > array.size
      combo_size += 1
      start_idx = 0
      next
    end

  end
  0
end

p min_sub_length([2, 3, 1, 2, 4, 3], 7) == 3
p min_sub_length([1, 10, 5, 2, 7], 9) == 1
p min_sub_length([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p min_sub_length([1, 2, 4], 8) == 0

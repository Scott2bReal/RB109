# Given an array of integers nums and an integer target, return indices of the
# two numbers such that they add up to target.  You may assume that each input
# would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.
#
# Input: Array, target sum
# Output: Array containing indicies of elements of input array which sum to the
# target sum
#
# Rules
#   - Return array can be in any order
#   - Can't use the same element twice
#   - What if there are more than two combos?
#
# Algorithm:
#  for each number with index in input array
#    for each number with index in input array
#     next if idx_nest == idx
#     if number + number_nest == target_sum then return array with both indicies

def two_sum(array, target_sum)
  array.each_with_index do |num, idx|
    array.each_with_index do |num_nest, idx_nest|
      next if idx_nest == idx
      return [idx, idx_nest] if num + num_nest == target_sum
    end
  end
end

p two_sum([2, 11, 7, 15], 9) == [0, 2]
p two_sum([3, 2, 4], 6) == [1, 2]
p two_sum([3, 3], 6) == [0, 1]

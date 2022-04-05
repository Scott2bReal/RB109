# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.
#
# Algorithm:
#   init no_repeats = array.uniq
#   for each num in array (map)
#     start with nums less = 0
#     for each num in no_repeats
#       increment nums less by one if less than num
#     return nums less

def smaller_numbers_than_current(array)
  no_repeats = array.uniq

  array.map do |current_num|
    nums_less = 0

    no_repeats.each do |compare_num|
      nums_less += 1 if compare_num < current_num
    end

    nums_less
  end
end

# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

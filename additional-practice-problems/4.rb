# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.
#
# Algorithm:
#   init variable smallest_difference = first num - second num absolute value
#   init closest_pair = [sorted[1], sorted[0]]
#   for each cons size 2 in sorted
#     difference = slice[1] = slice[0]
#     if difference < smallest_difference
#       smallest_difference = difference
#       closest_pair = slice
#   return closest_pair

def closest_numbers(array)
  smallest_difference = (array[1] - array[0]).abs
  closest_pair = [array[0], array[1]]

  array.combination(2) do |combo|
    difference = (combo[0] - combo[1]).abs
    if difference < smallest_difference
      closest_pair = combo
      smallest_difference = difference
    end
  end

  closest_pair
end

# Examples:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".

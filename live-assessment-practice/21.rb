# Reverse an array without using the built-in reverse method
#
# Input: array
# Output: reversed array
#
# Algorithm:
#   loop array size number of times
#     remove and append first item of array
#
def reverse_array(array)
  return array if array.empty?
  new_array = []
  array.size.times do
    new_array.push(array.pop)
  end
  new_array
end

p reverse_array([1, 2, 3, 4]) == ([4, 3, 2, 1])
p reverse_array([]) == ([])

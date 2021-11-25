=begin

Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise.

array = [[1,2,3],
         [4,5,6],
         [7,8,9]]
snail(array) #=> [1,2,3,6,9,8,7,4,5]

For better understanding, please follow the numbers of the next array consecutively:

array = [[1,2,3],
         [8,9,4],
         [7,6,5]]
snail(array) #=> [1,2,3,4,5,6,7,8,9]

Input: Array matrix
Output: Array of numbers in snail order as described above (will expand in algorithm)

Algorithm:
  - Init sorted = []
  - Init idx_x = 0
  - Init idx_y = 0
  - Init x_limit = subarray.size - 1
  - Init y_limit = overall_array.size - 1
  - Beginning at idx_x 0 and idx_y 0
    - increase idx_x, adding each element to sorted
    - once idx_x == x_limit
      - increment idx_y, leave idx_x the same
      - on each incrementation of idx_y, add element to sorted.
      - Once idx_y hits y_limit
        - decrement idx_x until idx_x is back to 0, adding elemtns to sorted
          - once this happens, decrement y_limit by 1, and x_limit by 1
        - then decrement idx_y by 1

=end
require 'pry-byebug'

def snail(array)
  sorted = []
  idx_x = 0
  idx_y = 0
  x_limit = array[0].size - 1
  y_limit = array.size - 1
  binding.pry
  until idx_x == x_limit
    sorted << array[idx_y][idx_x] 
    idx_x += 1
  end
  until idx_y == y_limit
    sorted << array[idx_y][idx_x]
    idx_y += 1
  end
  x_limit -= 1
  until idx_x == x_limit
    sorted << array[idx_y][idx_x]
    idx_x -= 1
  end
  y_limit -= 1
  until idx_y == y_limit
    sorted << array[idx_y][idx_x]
    idx_y -= 1
  end
  p sorted
end

snail([[1, 2, 3], [8, 9, 4], [7, 6, 5]])

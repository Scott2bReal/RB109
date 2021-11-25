=begin

Create a function that returns the sum of the two lowest positive numbers given
an array of minimum 4 positive integers. No floats or non-positive integers will
be passed.

For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

[10, 343445353, 3453445, 3453545353453] should return 3453455.

init sums = []
For each cons slice size 2 in array
add sum of slice to sums
return min of sums

=end

def sum_two_smallest_numbers(numbers)
  sums = []
  numbers.combination(2) do |combo|
    sums << combo.sum
  end
  sums.min
end

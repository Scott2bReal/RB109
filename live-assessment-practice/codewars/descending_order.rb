=begin

Your task is to make a function that can take any non-negative integer as an
argument and return it with its digits in descending order. Essentially,
rearrange the digits to create the highest possible number.

Examples:

Input: 42145 Output: 54421

Input: 145263 Output: 654321

Input: 123456789 Output: 987654321

Split number into digits
Sort into descending order
Join separated by ''
convert to_i

=end

def descending_order(num)
  num.digits.sort.reverse.join('').to_i
end

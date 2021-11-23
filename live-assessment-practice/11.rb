# You have to create a method that takes a positive integer number
# and returns the next bigger number formed by the same digits.
#
# Input: Positive Integer
# Output: Next biggest number formed by same digits
#
# Rules:
#   Return -1 if no bigger number
#
# Algorithm:
#   return -1 if num.digits.size == 1
#   init next_highest = nil
#   for all permutations of num.digits.reverse
#     If perm.join is greater than num then update next_highest

def next_bigger_num(num)
  return -1 if num.digits.size == 1
  next_highest = nil
  digits = num.digits.reverse
  digits.permutation do |perm|
    test_num = perm.join('').to_i
    next_highest = test_num if next_highest?(num, test_num, next_highest)
  end
  next_highest.nil? ? -1 : next_highest
end

def next_highest?(num, test_num, next_highest)
  if test_num > num
    if next_highest
      return true if test_num < next_highest
      false
    else
      true
    end
  end
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798

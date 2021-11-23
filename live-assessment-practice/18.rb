# Write a method that takes an integer year and returns the century
# return value must be a number that ends with st, nd, rd, or th appropriately
#
# Input: Integer (year)
# Output: String of century, with appropriate ordinal
#
# Algorithm:
#  init century = input year / 100 + 1 stringed
#  make method to determine ordinal
#  century is concatenation of century and calling ordinal with century as
#  argument
#
#  find_ordinal algorithm:
#   conditional
#   if starts with '1'
#
def find_ordinal(number)
  case
  when number.end_with?('11') then return 'th'
  when number.end_with?('12') then return 'th'
  when number.end_with?('13') then return 'th'
  when number.end_with?('1') then return 'st'
  when number.end_with?('2') then return 'nd'
  when number.end_with?('3') then return 'rd'
  end
  'th'
end

def century(year)
  century = ((year / 100) + 1).to_s
  century + find_ordinal(century)
end

p century(24) == '1st'
p century(104) == '2nd'
p century(299) == '3rd'
p century(1078) == '11th'
p century(1123) == '12th'
p century(1244) == '13th'
p century(2092) == '21st'
p century(2134) == '22nd'

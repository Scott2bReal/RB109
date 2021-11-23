# Write a program that takes a word problem and returns the answer as an integer
#
# Input: String containing arithmetic
# Output: Result of that string
#
# Algorithm:
#   Create helper methods which find a number, and parse operation
#

def number?(word)
  word.to_i.to_s == word
end

def solver(string)
  words = string.split(/[^A-Za-z0-9]/)
  numbers = words.select { |word| number?(word) }.map(&:to_i)
  words.each do |word|
    case word
    when 'divided' then return numbers[0] / numbers[1]
    when 'plus' then return numbers[0] + numbers[1]
    when 'minus' then return numbers[0] - numbers[1]
    when 'times' then return numbers[0] * numbers[1]
    end
  end
end

p solver("What is 15 divided by 3?") == 5

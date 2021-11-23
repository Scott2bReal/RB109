# Write a method that takes two numbers. Return an array containing all primes
# between the two numbers (include the two given numbers in your answer if they
# are prime). Don't use Ruby's 'prime' class.
#
# Input: Two integers
# Output: All primes between two input integers, inclusive
#
# Algorithm:
#   for each number in inclusive range of input numbers
#     assume number to be prime
#       from 2 to number - 1, if num % divisor is ever 0, set prime to false
#
#
def find_primes(first, last)
  primes = []
  (first..last).each do |num|
    prime = true
    2.upto(num / 2) do |divisor|
      prime = false if (num % divisor).zero?
    end
    prime = false if num == 1
    primes << num if prime
  end
  primes
end

p find_primes(3, 10) == [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
p find_primes(1, 2) == [2]

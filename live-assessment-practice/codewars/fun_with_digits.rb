=begin

Some numbers have funny properties. For example:

    89 --> 8¹ + 9² = 89 * 1

    695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2

    46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

Given a positive integer n written as abcd... (a, b, c, d... being digits) and a
positive integer p

    we want to find a positive integer k, if it exists, such as the sum of the
    digits of n taken to the successive powers of p is equal to k * n.

In other words:

    Is there an integer k such as : (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) +
    ...) = n * k

If it is the case we will return k, if not return -1.

Note: n and p will always be given as strictly positive integers.

Input: Two positive intgers, num and power
Output: The number that is equal to the sum of the digits of num each raised to
a the successive power of power

Algorithm:

  - Make an array of digits of num
    (convert num to_s, split into chars, map to_i to each char)

  - Create new array by iterating over digits and use map to raise each digit to
  the power of p + 1

  - Save the sum of that array

  - Divide that sum by the original number.
    - Return result if over 0
    - If 0, return -1

=end

def dig_pow(num, power)
  digits = num.to_s.chars.map(&:to_i)
  sum = digits.map.with_index { |digit, idx| digit**(idx + power) }.sum

  sum % num == 0 ? sum / num : -1
end

p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) == 51

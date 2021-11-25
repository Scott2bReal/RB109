=begin

Create a function that takes an integer as an argument and returns "Even" for
even numbers or "Odd" for odd numbers.

Input: Integer
Output: "Even" or "Odd"

% number by 2
Ternary, return "Even" if 0 or "Odd" if not

=end

def even_or_odd(number)
  number % 2 == 0 ? "Even" : "Odd"
end

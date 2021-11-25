=begin

Check to see if a string has the same amount of 'x's and 'o's. The method must
return a boolean and be case insensitive. The string can contain any char.

Examples input/output:

XO("ooxx") => true
XO("xooxx") => false
XO("ooxXm") => true
XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
XO("zzoo") => false

compare counts of x and o, return true if the same and false if not

=end

def XO(string)
  string.downcase.count('x') == string.downcase.count('o')
end

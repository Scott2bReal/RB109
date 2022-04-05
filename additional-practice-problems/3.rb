# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Algorithm:
#   Split string into words, init variable words
#   init new_string = ''
#
#   For each word (with index)
#     if idx + 1 % 3 == 0
#       for each char in word.chars (map)
#       if idx is odd then capitalize letter
#       join dat
#     else
#       new_string << word

def to_weird_case(string)
  new_string = []
  words = string.split(' ')

  words.each_with_index do |word, idx|
    if (idx + 1) % 3 == 0
      new_string << weird_cased_word(word)
    else
      new_string << word
    end
  end

  new_string.join(' ')
end

def weird_cased_word(word)
  new_word = word.chars.map.with_index do |char, idx|
    idx.odd? ? char.upcase : char
  end

  new_word.join
end

# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".

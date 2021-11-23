# Given a word, compute the Scrabble score for that word
# A, E, I, O, U, L, N, R, S, T = 1
# D, G = 2
# B, C, M, P = 3
# F, H, V, W, Y = 4
# K = 5
# J, X = 8
# Q, Z = 10
#
# Input: String
# Output: Scrabble score for string, given scores in problem statement
#
# Algorithm:
#  init constant SCORES
#  init local variable score = 0
#  for each character in string
#   for each k, v in SCORES
#     if value includes char.upcase
#       add key to score
#   return score

SCORES = {
  1 => %w(A E I O U L N R S T),
  2 => %w(D G),
  3 => %w(B C M P),
  4 => %w(F H V W Y),
  5 => %w(K),
  8 => %w(J X),
  10 => %w(Q Z)
}

def scrabble_score(word)
  score = 0
  word.each_char do |char|
    SCORES.each do |key, value|
      score += key if value.include?(char.upcase)
    end
  end
  score
end

p scrabble_score('a') == 1
p scrabble_score('cabbage') == 14
p scrabble_score('Cabbage') == 14
p scrabble_score('zebra') == 16

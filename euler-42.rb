# 
# The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so
# the first ten triangle numbers are:
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# By converting each letter in a word to a number corresponding to its
# alphabetical position and adding these values we form a word value. For example,
# the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a
# triangle number then we shall call the word a triangle word.
# Using words.txt (right click and 'Save Link/Target As...'), a 16K text file
# containing nearly two-thousand common English words, how many are triangle
# words?
alphabet = ('A'..'Z').to_a
triangle_numbers = (1..100).map {|n| ((0.5 * n) * (n + 1)).to_i }

f = File.open("words.txt")

num_triangle_words = 0
f.read.gsub(/"/, '').split(',').each do |word|
  letters = word.split(//)
  value = letters.inject(0) { |sum, letter| sum + alphabet.index(letter) + 1 }
  num_triangle_words += 1 if triangle_numbers.include? value
end

p num_triangle_words

f.close

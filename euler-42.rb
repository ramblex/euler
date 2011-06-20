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

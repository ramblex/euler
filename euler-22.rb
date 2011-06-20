alphabet = ('A'..'Z').to_a

f = File.open('names.txt')

total = 0
f.read.gsub(/"/, '').split(',').sort.each_with_index do |name, idx|
  score = name.split(//).inject(0) {|score, letter| score + alphabet.index(letter) + 1}
  total += score * (idx + 1)
end
p total

f.close

# 
# 
# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file
# containing over five-thousand first names, begin by sorting it into alphabetical
# order. Then working out the alphabetical value for each name, multiply this
# value by its alphabetical position in the list to obtain a name score.
# For example, when the list is sorted into alphabetical order, COLIN, which is
# worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would
# obtain a score of 938  53 = 49714.
# What is the total of all the name scores in the file?
# 
alphabet = ('A'..'Z').to_a

f = File.open('names.txt')

total = 0
f.read.gsub(/"/, '').split(',').sort.each_with_index do |name, idx|
  score = name.split(//).inject(0) {|score, letter| score + alphabet.index(letter) + 1}
  total += score * (idx + 1)
end
p total

f.close

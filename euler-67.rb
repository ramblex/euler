f = File.open('triangle.txt')

lines = f.map {|line| line.split.map {|num| num.to_i} }
p lines
sums = lines.last
next_sums = Array.new(sums.size, 0)

lines[0..-2].reverse.each do |numbers|
  p sums
  next_sums = Array.new(numbers.size, 0)
  numbers.each_with_index do |num, num_idx|
    next_sums[num_idx] = sums[num_idx..num_idx+1].max + num
  end
  sums = next_sums
end

p sums

f.close

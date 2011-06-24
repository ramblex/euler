f = File.open('euler-18.txt')

# Convert the input file so that each line is an array of numbers
@numbers = f.map {|line| line.split.map {|num| num.to_i} }

def max_sum(line_num, idx)
  return @numbers[line_num][idx] if line_num == @numbers.length - 1
  left_sum = max_sum(line_num + 1, idx)
  right_sum = max_sum(line_num + 1, idx + 1)
  [left_sum, right_sum].max + @numbers[line_num][idx]
end

p max_sum(0, 0)

f.close

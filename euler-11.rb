def calc_max(arr)
  max_sum = 0
  arr.each do |line|
    (0..(line.size - 4)).each do |start|
      sum = line[start..(start + 3)].inject(:*)
      max_sum = sum if sum > max_sum
    end
  end
  max_sum
end

f = File.open("euler-11.txt")

rows_grid = []

f.each do |line|
  rows_grid << line.split.map { |i| i.to_i }
end

columns_grid = Array.new(rows_grid.size)
columns_grid.map! { Array.new }

# Generate columns
rows_grid.each do |row|
  row.each_with_index do |num, idx|
    columns_grid[idx] << num
  end
end


single_arr = rows_grid.inject([]) { |result, arr| result += arr }

max_sum = 0
single_arr.each_with_index do |start_num, idx|
  if idx % rows_grid.size < 17 && idx < 340
    sum = (0..3).inject(1) { |sum, offset|
      sum * single_arr[idx + (offset * rows_grid.size) + offset]
    }
    max_sum = sum if sum > max_sum
  end
end

single_arr.each_with_index do |start_num, idx|
  if idx % rows_grid.size > 2 && idx < 340
    sum = (0..3).inject(1) { |sum, offset|
      sum * single_arr[idx + (offset * rows_grid.size) - offset]
    }
    max_sum = sum if sum > max_sum
  end
end
p [calc_max(rows_grid), calc_max(columns_grid), max_sum].max

f.close

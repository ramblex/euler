f = File.open('base_exp.txt')

largest_line = -1
largest_log = -1

f.each_with_index do |line, idx|
  line.chomp!
  next if line.nil?
  base,exp = line.split(',')
  log_x = exp.to_i * Math.log(base.to_f)
  if log_x > largest_log
    largest_line = idx + 1
    largest_log = log_x
  end
end

p largest_line

f.close

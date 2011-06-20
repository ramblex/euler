max_num = 1
max_length = 0

(1..1000000).each do |num|
  seq_length = 1
  start_num = num
  if num % 1000 == 0
    p num
  end
  until num == 1
    seq_length += 1
    if num % 2 == 0
      num /= 2
    else
      num = (3 * num) + 1
    end
  end
  if seq_length > max_length
    max_num = start_num
    max_length = seq_length
  end
end

p max_num

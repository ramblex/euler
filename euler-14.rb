# 
# The following iterative sequence is defined for the set of positive integers:
# n  n/2 (n is even)
# n  3n + 1 (n is odd)
# Using the rule above and starting with 13, we generate the following sequence:
# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains
# 10 terms. Although it has not been proved yet (Collatz Problem), it is thought
# that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?
# NOTE: Once the chain starts the terms are allowed to go above one million.
# 
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

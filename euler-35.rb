# 
# 
# The number, 197, is called a circular prime because all rotations of the digits:
# 197, 971, and 719, are themselves prime.
# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71,
# 73, 79, and 97.
# How many circular primes are there below one million?
# 
primes = (2..1000000).to_a
(2..1000000).each do |num|
  primes.delete_if {|x| x != num && x % num == 0}
  break if primes.size == 78498
end
p primes.size

num_circular_primes = 0
checked = Array.new(0, primes.size)
primes.each_with_index do |prime, idx|
  next if checked[idx]
  numbers = prime.to_s.split(//)
  start = 1
  is_circular = true
  num_primes_in_circle = 1
  numbers.length.times do
    reorder_prime = (numbers[start..numbers.size] + numbers[0..start-1]).join.to_i
    unless reorder_prime == prime
      num_primes_in_circle += 1
      prime_idx = primes.index(reorder_prime)
      if prime_idx.nil?
        is_circular = false
        break
      else
        checked[prime_idx] = 1
      end
    end
    start += 1
  end
  num_circular_primes += num_primes_in_circle if is_circular
end
p num_circular_primes

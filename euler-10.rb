# Sieve of Eratosthenes
# Finds the prime number from 2 to top_limit
prime_limit = 2000000

primes = (2..prime_limit).to_a
num_times_size_same = 0
previous_size = primes.size

(2..prime_limit).each do |num|
  primes.delete_if { |x| x != num && x % num == 0 }
  if primes.size == previous_size
    num_times_size_same += 1
  else
    num_times_size_same = 0
  end
  previous_size = primes.size
  puts "#{primes.size} #{num_times_size_same}"
  break if num_times_size_same > 100
end

p primes.inject(:+)

# 
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that
# the 6th prime is 13.
# What is the 10 001st prime number?
# 
prime_limit = 200000

primes = (2..prime_limit).to_a

(2..prime_limit).each do |num|
  primes.delete_if { |x| x != num && x % num == 0 }
  break if primes.size == 17984
end

p primes[10000]

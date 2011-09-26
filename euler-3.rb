# 
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
# 
# 
# Sieve of Eratosthenes
# Finds the prime number from 2 to top_limit
prime_limit = 20000

primes = (2..prime_limit).to_a

(2..prime_limit).each do |num|
  primes.delete_if { |x| x != num && x % num == 0 }
end

p primes
prime_factors = []

number = 600851475143
100.times do
  primes.each do |prime|
    if number % prime == 0
      prime_factors << prime
      number = number / prime
      p number
      p prime_factors
      break
    end
  end
end


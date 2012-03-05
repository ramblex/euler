# A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:
#
# 1/2  =   0.5
# 1/3  =   0.(3)
# 1/4  =   0.25
# 1/5  =   0.2
# 1/6  =   0.1(6)
# 1/7  =   0.(142857)
# 1/8  =   0.125
# 1/9  =   0.(1)
# 1/10 =   0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.
#
# Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

require 'set'

require './eratosthenes'

primes = get_primes(1000)

max_d = 0
max_length = 0

primes.each do |p|
  b = 10
  t = 0
  r = 1
  numbers = []

  next if b % p == 0
  while true
    t += 1
    x = r * b
    d = x / p
    r = x % p
    numbers << d
    break if r == 1
  end
  if t == p - 1 && numbers.length > max_length
    max_d = p
    max_length = numbers.length
  end
end

puts max_d

# https://projecteuler.net/problem=7
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

#######################################################
# require 'prime' # Why don't use the library? lol :) #
#                                                     #
# puts Prime.instance.first(10_001).last              #
#######################################################

primes = [2, 3, 5, 7, 11, 13]
count = 14

until primes.length == 10_001
  primes << count unless primes.find { |p| count % p == 0 }
  count = count + 1
end

p primes.last

# https://projecteuler.net/problem=5
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def calculated(number)
  (2..(number/2)).each { |i| return i if number%i == 0 }
  number
end

positive, n = 1, 20
(1..n).each { |i| next_number = [i+1, n].min
positive *= calculated(next_number) if positive % next_number != 0 }

puts positive
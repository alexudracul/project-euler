# https://projecteuler.net/problem=6
#
# The sum of the squares of the first ten natural numbers is: 1**2 + 2**2 + ... + 10**2 = 385
#
# The square of the sum of the first ten natural numbers is: (1 + 2 + ... + 10)**2 = 552 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_of_squares(x)
  a = 0
  (1..x).each { |n| a += n**2 }
  a
end

def square_of_sum(x)
  a = 0
  (1..x).each { |n| a += n }
  a**2
end

p square_of_sum(100) - sum_of_squares(100)

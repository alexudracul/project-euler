# https://projecteuler.net/problem=4
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(x)
  y = x.to_s
  checks = y.length / 2
  y[0..(checks-1)] == y[-checks..-1].reverse
end

def divide?(x)
  999.downto(100).each { |y| return true if x % y == 0 && (x / y).to_s.length == 3 }
  false
end

999_999.downto(100_000).each { |y| break puts y if palindrome?(y) && divide?(y) }

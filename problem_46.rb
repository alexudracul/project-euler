# https://projecteuler.net/problem=46
#
# It was proposed by Christian Goldbach that every odd composite number can be written as the sum of a prime and twice a square.
#
# 9 = 7 + 2×12
# 15 = 7 + 2×22
# 21 = 3 + 2×32
# 25 = 7 + 2×32
# 27 = 19 + 2×22
# 33 = 31 + 2×12
#
# It turns out that the conjecture was false.
#
# What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

require 'mathn'

class Integer
  def composite?
    !self.prime? && self != 1
  end

  def gb?
    Prime.each do |p|
      return false if p >= self

      t, i = 1, 1
      while t <= self
        t = p + (2 * (i ** 2))

        return true if t == self
        i += 1
      end
    end

    false
  end
end

answer, i = 0, 1
while answer == 0
  answer = i if i.composite? && !i.gb?
  i+=2
end

puts answer

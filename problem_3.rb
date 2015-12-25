# https://projecteuler.net/problem=3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

def prime?(n)
  (2..(n-1)).each { |x| return false if n % x == 0 }
  true
end

numb = 600_851_475_143
arr = []
product_sum = 1
x = 2 # first prime numb

while product_sum < numb
  if numb % x == 0 && prime?(x)
    arr << x
    product_sum *= x
  end
  x += 1
end

puts "#{arr.last}"
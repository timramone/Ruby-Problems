#!/usr/bin/env ruby -wKU


puts "Введите целые числа через пробел:"

s = gets
n = s.split(' ')
max = 0

n.each do |x|
  x = x.to_i
  if x > max
    max = x
  end
end

puts "Максимальное число: #{max}"
a = gets.split[0...-1]
b = gets.split[0...-1]
intersect = a & b
if intersect.size == 0
  puts "empty"
else
  puts intersect * " "
end

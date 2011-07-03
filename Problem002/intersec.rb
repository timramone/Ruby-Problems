a = gets.split[0...-1]
b = gets.split[0...-1]
intersect = a & b
if intersect.empty?
  puts "empty"
else
  puts intersect * " "
end

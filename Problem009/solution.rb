n = gets.to_i

a = 1
b = 1

i = 1
while i < n
  a,b = b,a+b
  i += 1
end
puts b

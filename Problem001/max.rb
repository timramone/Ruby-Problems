arr = []
while s = gets do
  arr += s.split.map {|x| x.to_i }
end
puts arr.max

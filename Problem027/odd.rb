var = gets
ar = []
while num = gets do
  num.split(' ').map {
    |each|
    if ar.include? (each) then
      ar.delete(each)
    else
      ar.push(each)
    end
  }
end
puts ar
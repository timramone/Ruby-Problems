num = gets.to_i
count = 0
while num>3 do
  if num%2 == 0
    num /= 2
  else
    if (num+1)%4 == 0
      num += 1
    else
      num -=1
    end
  end
  count += 1
end
puts count+num

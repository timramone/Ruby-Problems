k = gets.to_i
m, found = k, false
while not found
  m += 1
  cur, sz, found = -1, 2*k, true
  k.times do
    cur = (cur + m) % sz
    if cur < k
      found = false
      break
    end
    sz -= 1
    cur = (cur - 1 + sz) % sz
  end
end
puts m

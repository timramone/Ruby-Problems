# tokens - array of brackets and integers
tokens = gets.split(/(\(|\)|\s)/).reject {|c| c =~ /^ *$/}

# contribution of every leaf: value / 2^depth
average = 0
divisor = 1
tokens.each do |t|
  case t
  when '('
    divisor *= 2
  when ')'
    divisor /= 2
  else
    i = t.to_f
    average += i/divisor
  end
end

puts average

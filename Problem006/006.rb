result = []
n = gets.to_i
nums = (0..Math.sqrt(n).to_i).to_a
nums.each { |a| (a..nums.size).each { |b| (b..nums.size).each { |c| result << a**2 + b**2 + c**2 } } } 
puts n + 1 - result.uniq.select { |x| x <= n }.size

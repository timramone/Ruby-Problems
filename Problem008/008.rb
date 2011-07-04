puts gets.chomp.split(//).inject(0) { |count, char| break if count < 0; char == '(' ? count += 1 : count -= 1 } == 0 ? "YES" : "NO"

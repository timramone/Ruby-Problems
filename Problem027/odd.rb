gets;
puts gets.split.inject(0) { |xor, cur| xor ^ cur.to_i }
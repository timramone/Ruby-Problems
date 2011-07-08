n = gets.to_i

$memo = Array.new(5) { Array.new(n+1, -1) }

def solve(cur, n)
  result = 0;

  return 0 if n < 0
  return 1 if cur == 1 || n < 2
  return $memo[cur][n] unless $memo[cur][n] == -1

  0.upto(n/cur) do |i|
    result += ($memo[cur - 1][n - i * cur] = solve(cur - 1, n - i * cur))
  end

  result
end

puts solve(4, n)

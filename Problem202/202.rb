n = gets.to_i

dp = Array.new(n+1) { Array.new(n+1, 0) }

0.upto(n) { |i| dp[i][0] = 1 }

1.upto(n) do |coin|
  1.upto(n) do |cost|
    dp[coin][cost] = dp[coin-1][cost] + (cost < coin ? 0 : dp[coin][cost - coin])
  end
end

puts dp[n][n]

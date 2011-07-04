n, num, *tracks = gets(nil).split.map { |x| x.to_i }
dp = Array.new(num + 1) { Array.new(20 * [n,1024].min + 1) }
dp[0].fill(0)
(0..num).each { |i| dp[i][0] = 0 }

(1..num).each do |track|
  (1..[n,1024].min).each do |length|
    if length - tracks[track-1] < 0
      dp[track][length] = dp[track-1][length]
    else
      dp[track][length] = [dp[track-1][length], dp[track-1][length-tracks[track-1]] + tracks[track-1]].max
    end
  end
end

puts dp[num][n]

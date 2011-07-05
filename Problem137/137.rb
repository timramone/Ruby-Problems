# http://www.ics.uci.edu/~eppstein/161/960109.html

$m = [[1,0],[0,1]]

$m.instance_eval do
  def multiply!(n, k)
    a, b, c = self[0][0], self[0][1], self[1][1]
    d, e, f = n[0][0], n[0][1], n[1][1]
    self[0] = [(a*d + b*e) % k, (b*d + c*e) % k]
    self[1] = [(b*d + c*e) % k, (b*e + c*f) % k]
  end
end

def matpow(n, k)
  if n > 1
    matpow(n/2, k)
    $m.multiply!($m, k)
  end

  $m.multiply!([[1,1],[1,0]], k) if n % 2 == 1
end

def fib(n, k)
  matpow(n-1, k)
  return $m[0][0]
end

n, k = gets(nil).split.map { |x| x.to_i }
puts fib(n, k) % k

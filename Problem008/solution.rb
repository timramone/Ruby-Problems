def finish(success)
  puts success ? 'YES' : 'NO'
  exit
end

depth = 0
while ch = $stdin.getc
  depth += 1 if ch.chr == '('
  depth -= 1 if ch.chr == ')'
  finish(false) if depth < 0
end

finish(depth == 0)

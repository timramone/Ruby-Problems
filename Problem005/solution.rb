# Вариант решения не только для бинарного дерева
# Если кто подскажет, как написать лучше (короче!), буду рад ;)

s = gets

while (tmp=s[/(\([^()]+\))/])
	result=0
	arr=tmp[1..-2].split(/\s/).reject {|e| e=~ /^\s*$/}
	arr.each {|e| result+=e.to_f/arr.size}
	s[/(\([^()]+\))/]=" "+result.to_s+" "
end

p s.to_f
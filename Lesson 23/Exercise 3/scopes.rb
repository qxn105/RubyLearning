# переменная $a - глобальная
# переменная b - локальная
# переменная c - внутри метода
$a = 0
b = 0

def method
	c = 0
	puts "Внутри метода:"
	puts "Переменная '$a' #{defined?($a) ? "" : "не "}определена"
	puts "Переменная 'b' #{defined?(b) ? "" : "не "}определена"	
	puts "Переменная 'с' #{defined?(c) ? "" : "не "}определена"	
end

method
puts "\nЛокально:"
puts "Переменная '$a' #{defined?($a) ? "" : "не "}определена"
puts "Переменная 'b' #{defined?(b) ? "" : "не "}определена"	
puts "Переменная 'с' #{defined?(c) ? "" : "не "}определена"	


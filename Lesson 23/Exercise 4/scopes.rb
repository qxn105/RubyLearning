# переменная $a - глобальная
# переменная b - локальная
# переменная c - внутри метода
class MyClass 
	@variable_0

	def initialize
		@variable = 0
	end

	def check_variables
		puts "\nВнутри объекта класса:"
		puts "Переменная '@variable_0' #{defined?(@variable_0) ? "" : "не "}определена"	
		puts "Переменная '@variable' #{defined?(@variable) ? "" : "не "}определена"	
		puts "Переменная '$a' #{defined?($a) ? "" : "не "}определена"
		puts "Переменная 'b' #{defined?(b) ? "" : "не "}определена"	
		puts "Переменная 'с' #{defined?(c) ? "" : "не "}определена"	
	end
end

$a = 0
b = 0

def method
	c = 0
	puts "\nВнутри метода:"
	puts "Переменная '$a' #{defined?($a) ? "" : "не "}определена"
	puts "Переменная 'b' #{defined?(b) ? "" : "не "}определена"	
	puts "Переменная 'с' #{defined?(c) ? "" : "не "}определена"	
end

method
puts "\nЛокально:"
puts "Переменная '$a' #{defined?($a) ? "" : "не "}определена"
puts "Переменная 'b' #{defined?(b) ? "" : "не "}определена"	
puts "Переменная 'с' #{defined?(c) ? "" : "не "}определена"	

class_obj = MyClass.new
class_obj.check_variables

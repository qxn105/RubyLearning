# Калькулятор с Float
# Напишите калькулятор, который работает с числами с плавающей точкой.

# Обратите внимание, что в этом случае на ноль делить можно (получится бесконечность Infinity) и не надо ловить исключения.

# Например:
# 
# Первое число:
# > 92.7
# Второе число:
# > 0
# Выберите операцию (+ - * /):
# > /
# Результат:
# Infinity

puts 'Простенький калькулятор'
puts "Первое число:"
val1 = STDIN.gets.encode('UTF-8').chomp.to_f
puts "Второе число:"
val2 = STDIN.gets.encode('UTF-8').chomp.to_f
puts "Выберите операцию (+ - * /):"
operation = STDIN.gets.encode('UTF-8').chomp

begin
  puts "#{val1} #{operation} #{val2}"
  print "Результат: "
  case operation
  when "+"
  	print val1 + val2
  when "-"
  	print val1 - val2
  when "*"
  	print val1 * val2
  when "/"
  	print val1 / val2
  end
rescue ZeroDivisionError => error							     # Не сработает при делении на 0 float
	puts "На ноль делить нельзя (#{error.message})" 
end
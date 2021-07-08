﻿# Игра для программистов «Угадайка»
# Напишите программу, которая загадывает случайное число от 0 до 15 включительно и просит пользователя его угадать с трех попыток.

# При каждом вводе пользователем числа программа отвечает «тепло» если введенное число отличается от загаданного на 2 или меньше,
# «холодно» если на 3 и больше. В каждом ответе программа также подсказывает больше или меньше введенное число,
# чем загаданное (выводит на экран "нужно больше" или "нужно меньше").

# Если число угадано точно за 3 попытки – программа завершается и поздравляет пользователя с победой. Если нет – выводит какое число было загадано.

#   Загадано число от 0 до 16, отгадайте какое?
#   > 8
#   Тепло (нужно больше)
#   > 10
#   Тепло (нужно меньше)
#   > 9
#   Ура, вы выиграли!

# В качестве развлечения найдите алгоритм гарантированно угадать число за 3 попытки.

dig = rand(15)
puts "Загадано целое число от 0 до 15 включительно, отгадайте какое?"

try_num = 0
while (try_num<3)
  ansv = gets.to_i
	abort "Ура, вы выиграли!" if (ansv == dig)
	print "Тепло. " if (ansv - dig).abs <= 2
	if (ansv > dig)
		puts "Нужно меньше."
	else
		puts "Нужно больше."
	end
	try_num += 1
end
puts "Было загадано ", dig

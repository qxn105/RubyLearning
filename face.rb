# encoding: utf-8
# Викторина
# Создайте два файла: один с вопросами (по одному вопросу на одну строчку файла), другой с ответами на эти вопросы (также на каждой строчке один ответ).

# Например:
# 
# questions.txt
# 
# Сколько байт в килобайте?
# В каком году Гагарин полетел в космос?
# Сколько дней в высокосном году?
# answers.txt
# 
# 1024
# 1961
# 366

# Напишите программу, которая считывает оба файла и задает пользователю в консоли последовательно все эти вопросы.

# Задав вопрос, программа ждет ответа пользователя в консоли. А затем сравнивает с правильным ответом и сообщает, правильно ответил пользователь, или нет.

# Если ответ неверный, программа сообщает какой ответ правильный. В конце сообщает результат — сколько было дано правильных ответов.

# Пример:
# 
# Мини-викторина. Ответьте на вопросы.
# Сколько байт в килобайте?
# > 1024
# Верный ответ!
# 
# В каком году Гагарин полетел в космос?
# > 1962
# Неправильно. Правильный ответ: 1961
# 
# Сколько дней в высокосном году?
# > 366
# Верный ответ!
# 
# У вас 2 правильных ответов из 3

current_path = File.dirname(__FILE__)
file_path = []
file_path[0] = current_path + '/data/questions.txt'
file_path[1] = current_path + '/data/answers.txt'

i = 0
while i<file_path.size do
	abort "File #{file_path[i]} not found!" unless File.exist?(file_path[i])
	i += 1
end


i = 0
f_q = File.new(file_path[0], 'r:UTF-8')
f_a = File.new(file_path[1], 'r:UTF-8')
puts "Мини-викторина. Ответьте на вопросы."

lines_counter = 0
true_answers = 0
while line_q = f_q.gets and line_a = f_a.gets
	if lines_counter==0
		line_q[0] = ""
		line_a[0] = ""
	end
	lines_counter	+= 1

	puts line_q
	line_a = line_a.chomp
	answ = gets.force_encoding(Encoding.locale_charmap).encode("UTF-8").chomp
	if (answ == line_a)
		puts "Верный ответ!\n"
		true_answers += 1
	else
		puts "Неправильно. Верный ответ: #{line_a}\n"
	end
end

f_q.close
f_a.close

puts "У вас #{true_answers} правильных ответов из #{lines_counter}"
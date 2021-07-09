# Человек с именем и фамилией
# Создайте класс «Человек» с двумя свойствами: имя и отчество.

# В этом классе напишите два метода: конструктор и метод, который будет возвращать полное имя человека. 
# Конструктор принимает имя и отчество и записывает их в нужные поля. Второй метод возвращает полное имя человека.

# Напишите программу, которая использует этот класс: создайте трёх разных людей и выведите на экран их полные имена:

# У нас есть три человека:
# Гаврила Петрович
# Фёдор Петрович
# Василий Алибабаевич

require './include/person'

people = [
	Person.new("Гаврила", "Петрович"),
	Person.new("Фёдор", "Петрович"),
	Person.new("Василий", "Алибабаевич")
]

puts "У нас есть #{people.size.to_s} человека:"
for item in people
	puts item.full_name
end

# Люди и фильмы
# Объединяем людей и фильмы. Напишите программу, которая будет использовать одновременно два класса из предыдущих заданий (11-3 и 12-2).

# Добавьте в класс «Человек» поле, хранящее любимый фильм данного человека. В это поле будет записываться объект класса «Фильм».

# Также добавьте в класс «Человек» два метода: один будет записывать значение в это поле, другой будет возвращать текущее значение этого поля.

# Создайте трех людей, каждому из них назначьте (с использованием нового метода) по одному фильму и выведите всех трех людей и их фильмы на экран.

# К примеру:
# 
# Сергей
# с любимым фильмом: Челюсти
# Марина
# с любимым фильмом: Список Шиндлера
# Мадонна
# с любимым фильмом: Парк Юрского периода

require './include/film'
require './include/person'

people = [
	Person.new("Сергей", "Петрович", 18),
	Person.new("Марина", "Андреевна", 19),
	Person.new("Мадонна", "", 71)
]

puts "У нас есть #{people.size.to_s} человека:"
people[0].set_film(Film.new("Стивен Спилберг", "Челюсти"))
people[1].set_film(Film.new("Стивен Спилберг", "Список Шиндлера"))
people[2].set_film(Film.new("Стивен Спилберг", "Парк Юрского периода"))
for item in people
	puts item.full_name
	puts "с любимым фильмом: #{item.get_film.title}"
end

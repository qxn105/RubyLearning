﻿# Палиндром с пробелами
# Сделайте вторую версию программы «Палиндром», которая не учитывает наличие пробелов/знаков препинания во фразе.
# Сперва с помощью irb поймите, как убрать из строки все пробелы (не только те, что по краям) и знаки препинания. Посмотреть все методы объетка можно вызвав у него метод methods.
# Если не выйдет найти метод с пом. irb, погуглите или посмотрите документацию на класс String.

# Палиндром с пробелами
# Сделайте вторую версию программы «Палиндром», которая не учитывает наличие пробелов/знаков препинания во фразе.

# Сперва с помощью irb поймите, как убрать из строки все пробелы (не только те, что по краям) и знаки препинания. Посмотреть все методы объета можно вызвав у него метод methods.

# Если не выйдет найти метод с пом. irb, погуглите или посмотрите документацию на класс String.

puts "Введите слово для проверки на палиндром"
str = gets.force_encoding(Encoding.locale_charmap).encode("UTF-8").strip.delete(".,:+-_?")
puts "Это палиндром" if str.reverse == str
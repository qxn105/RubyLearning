﻿# Инвертирование массива
# Объявите в программе массив с числами от 1 до 5 по порядку.

# Выведите на экран сперва этот массив, а затем числа из этого массива в обратном порядке от 5 до 1–го, не изменяя сам исходный массив.

# Затем снова выведите исходный массив, измените его, так чтобы теперь его элементы встали задом наперед (от 5 до 1–го) и выведите его на экран снова.

# Например:
# 
# Исходный массив:
# [1, 2, 3, 4, 5]
# Массив в обратном порядке:
# [5, 4, 3, 2, 1]
# Исходный массив (не изменился):
# [1, 2, 3, 4, 5]
# Исходный массив (после изменения):
# [5, 4, 3, 2, 1]
# Попробуйте найти нужные методы массива сами, прежде чем смотреть подсказку.

ARR  = [1, 2, 3, 4, 5]
puts "исходный массив: " + ARR.to_s 

puts
puts "массив.reverse: " + ARR.reverse.to_s 
puts "исходный массив: " + ARR.to_s 

puts
puts "массив.reverse!: " + ARR.reverse!.to_s 
puts "исходный массив: " + ARR.to_s 

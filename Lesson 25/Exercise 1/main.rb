# encoding: utf-8
#
# Программа «Непослушные дети»
#
# (с) rubyrush.ru

# Подключаем классы Parent и Child
require_relative 'parent'
require_relative 'child'

# Делаем родителя
papa = Parent.new('Василий Игоревич')
#papa.name = "Вася" - не определен метод name=

# Делаем детей ;)
masha = Child.new('Маша')
masha.name = "Машка"
kolya = Child.new('Коля')

# Проверяем, кто послушный, а кто нет
puts "#{papa.name} послушный: #{papa.obedient}"
puts "#{masha.name} послушная: #{masha.obedient}"
puts "#{kolya.name} послушный: #{kolya.obedient}"
# Хамелеон
# Создайте класс «Хамелеон», у которого есть один метод поменять цвет. 
# Метод принимает на вход один параметр — цвет в виде строки (например "красный") и выводит на экран строку:

# Теперь я красный!

# Создайте экземпляр хамелеона и поменяйте его цвет несколько раз.

class Person

  def initialize(first_name, middle_name)
		@first_name = first_name
		@middle_name = middle_name
  end
  
  def full_name
		return "#{@first_name} #{@middle_name}"
  end
end
# Хамелеон
# Создайте класс «Хамелеон», у которого есть один метод поменять цвет. 
# Метод принимает на вход один параметр — цвет в виде строки (например "красный") и выводит на экран строку:

# Теперь я красный!

# Создайте экземпляр хамелеона и поменяйте его цвет несколько раз.

class Person

  def initialize(first_name, middle_name, age)
		@first_name = first_name
		@middle_name = middle_name
		@age = age
		@film = nil
  end
  
  def full_name
		if old?
			return "#{@first_name} #{@middle_name}"
		else
			return "#{@first_name}"
		end
  end

	def old?
		return @age>60
	end

	def age
		return @age
	end 

	def set_film(film)
		@film = film
	end

	def get_film
		return @film
	end
end
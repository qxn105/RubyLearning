# Для игры реализуем два класса: Game - для логики игры

class Heroes

	def initialize
		@heroes = ["Бэтмен", "Шерлок Холмс", "Буратино", "Фродо Бэггинс", "Моцарт"]
	end

	def help
		return @heroes.join(", ")
	end

	def antihero(hero)
	  case hero
		when "бэтмен", "batman", "batmеn"
			return "Джокер"
		when "шерлок холмс", "sherlock holmes"
			return "Профессор Мориарти"
		when "буратино", "buratino"
			 return "Карабас-Барабас"
		when "фродо бэггинс", "frodo baggins"
			return "Саурон"
		when "моцарт", "mozzart"
			return "Сальери"
		else 
			return "Нет такой информации."
		end
	end

end

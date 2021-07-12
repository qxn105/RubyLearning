# Для игры реализуем два класса: Game - для логики игры, ResultPrinter - для интерфейса

class UI
	def cls
		system "clear" or system "cls"
	end

	def get_str
		return STDIN.gets.force_encoding(Encoding.locale_charmap).encode("UTF-8").chomp.downcase
	end
end


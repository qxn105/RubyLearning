# Для игры реализуем два класса: Game - для логики игры, ResultPrinter - для интерфейса

class ResultPrinter

	# очистить экран
	def cls
		system "clear" or system "cls"
	end

	def print_status(game)
	  # puts "good_letters_out: #{game.good_letters.sort.to_s}"
	  # puts "letters: #{game.letters.sort.to_s}"
    if game.status == -1
      puts "Вы проиграли :("
      puts "Загаданное слово было: " + game.letters_out.join("")
			STDIN.gets
    elsif game.status == 1
      puts "Поздравляем, вы выиграли!"
      puts "Загаданное слово было: " + game.letters_out.join("")
			STDIN.gets
    else
			puts "Слово: #{get_word_for_print(game.letters_out, game.good_letters)}"
		  puts "Ошибки: #{game.bad_letters.join(", ").to_s}"	
      puts "У вас осталось ошибок: " + (7 - game.errors).to_s
    end	
	end

	# возвращает слово для вывода (отгаданые буквы видны / неотгаданные скрыты прочерками)
	def get_word_for_print(letters_out, good_letters)
	  result = ""
    for item in letters_out do
      if good_letters.include?(item)
        result += item + " "
      else
        result += "__ "
      end
    end
    return result
  end

	def print_viselitsa(errors)
		cls
  	case errors
	  when 0
      puts "
            _______
            |/
            |
            |
            |
            |
            |
            |
            |
          __|________
          |         |
          "
     when 1
      puts "
            _______
            |/
            |     ( )
            |
            |
            |
            |
            |
            |
          __|________
          |         |
          "
    when 2
      puts "
            _______
            |/
            |     ( )
            |      |
            |
            |
            |
            |
            |
          __|________
          |         |
          "
    when 3
      puts "
            _______
            |/
            |     ( )
            |      |_
            |        \\
            |
            |
            |
            |
          __|________
          |         |
          "
    when 4
      puts "
            _______
            |/
            |     ( )
            |     _|_
            |    /   \\
            |
            |
            |
            |
          __|________
          |         |
          "
    when 5
      puts "
            _______
            |/
            |     ( )
            |     _|_
            |    / | \\
            |      |
            |
            |
            |
          __|________
          |         |
          "
  
    when 6
      puts "
            _______
            |/
            |     ( )
            |     _|_
            |    / | \\
            |      |
            |     / \\
            |    /   \\
            |
          __|________
          |         |
          "
    when 7
      puts "
            _______
            |/     |
            |     (_)
            |     _|_
            |    / | \\
            |      |
            |     / \\
            |    /   \\
            |
          __|________
          |         |
          "
  
    end
  end
end


# Для игры реализуем два класса: Game - для логики игры, ResultPrinter - для интерфейса

class Game

	def initialize(slovo)
		@letters = get_letters(slovo)
		@letters_out = get_letters_out(slovo)
		@errors = 0
		@good_letters = []
		@bad_letters = []
		@status = 0
	end

	# get_letters берёт слово из первого параметра коммандной строки и возвращает его в виде массива букв
	def get_letters(slovo)
		if (slovo == nil || slovo == "")
			abort "Вы не ввели слово для игры"
		end
		slovo = slovo.downcase.gsub("ё", "е").gsub("й", "и")
		slovo += "й" if slovo.include?("и")
		slovo += "ё" if slovo.include?("е")
		return slovo.split("")
	end

	def get_letters_out(slovo)
		if (slovo == nil || slovo == "")
			abort "Вы не ввели слово для игры"
		end
		return slovo.downcase.split("")
	end

	# запрос следующей буквы
	def ask_next_letter
		puts "Введите следующую букву"
	  letter = ""
	  while letter == "" do
	    letter = STDIN.gets.force_encoding(Encoding.locale_charmap).encode("UTF-8").chomp
	  end
	  next_step(letter[0].downcase.gsub("й", "и").gsub("ё", "е"))		
	end

	# проверка буквы
	def next_step(bukva)
    if @status == -1 || @status == 1
      return
    end
    
    if @good_letters.include?(bukva) || @bad_letters.include?(bukva)
      return
    end
    
    if @letters.include? bukva
      @good_letters << bukva
			@good_letters << "й" if bukva == "и"
			@good_letters << "ё" if bukva == "е"

      if @good_letters.uniq.sort == @letters.uniq.sort
        @status = 1
      end
    else
      @bad_letters << bukva
			@bad_letters << "й" if bukva == "и"
			@bad_letters << "ё" if bukva == "е"
      @errors += 1
    
      if @errors >= 7
        @status = -1
      end
    end
	end

	def letters
		@letters
	end

	def letters_out
		@letters_out
	end

	def good_letters
		@good_letters
	end

	def bad_letters
		@bad_letters
	end

	def errors
		@errors
	end

	def status
		@status
	end

end

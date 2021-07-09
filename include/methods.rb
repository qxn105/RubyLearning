# - при вводе буквы заменю её на маленькую, Ё->Е и Й->И в get_user_input


# ============================================================
# очистить экран
def cls
	system "clear" or system "cls"
end

# ============================================================
# get_letters берёт слово из первого параметра коммандной строки и возвращает его в виде массива букв
def get_letters
	slovo = ARGV[0]
	if(Gem.win_platform? && ARGV[0])
		slovo = slovo.encode(ARGV[0].encoding, Encoding.default_external).encode("UTF-8")
	end

	if (slovo == nil || slovo == "")
		abort "Вы не ввели слово для игры"
	end
	return slovo.downcase.split("")
end

# ============================================================
# све буквы слеоать маленькими и заменить ё-е, й-и
def normalize_letters(letters)
	slovo = letters
	for item in slovo
		item.downcase!
		item.gsub!("й", "и")
		item.gsub!("ё", "е")
	end
	return slovo
end

# ============================================================
# get_user_input просто запрашивает у пользователя букву
def get_user_input
	letter = ""
	while (letter ==  "")
		letter = STDIN.gets.force_encoding(Encoding.locale_charmap).encode("UTF-8").chomp
	end
	return letter[0].downcase.gsub("й", "и").gsub("ё", "е")
end

# ============================================================
# проверка буквы
# массив good_letters содержит ранее угаданные буквы
def check_result(user_input, letters, good_letters, bad_letters)
	if (good_letters.include?(user_input) ||	# буква уже была ранее угадана                , т.е. буква введена повторно
			bad_letters.include?(user_input))  		# буква уже была ранее названа и не угадана
		return 0	# прощаем и просим ввести ещё букву
	end

	found = false
	found = true if letters.include? user_input    # буква угадана
	if user_input == "и" && letters.include?("й")	 # буква угадана
		found = true	
		good_letters << "й"
	end
	if user_input == "е" && letters.include?("ё")  # буква угадана
		found = true	
		good_letters << "ё"
	end
	if found
		good_letters << user_input
		# если угадано всё слово целиком
		if letters.uniq.size == good_letters.size  # uniq - метод массива, возвращающий массив только уникальных элементов
			return 1
		end
		return 0
	else
		bad_letters << user_input
		return -1 
	end
	
end

# ============================================================
# возвращает слово для вывода (отгаданые буквы видны / неотгаданные скрыты прочерками)
def get_word_for_print(letters, good_letters)
	result = ""
	i = 0 
	for ltr in letters
		if good_letters.include?(ltr)
			result += ltr + " "
		else
			result += "* " 
		end
		i += 1
	end
	return result
end

# ============================================================
# выводит статус слова (отгаданые буквы видны / неотгаданные скрыты прочерками)
# показывает количествоошибок, буквы, которые были названы
# если 7 ошибок - сообщение о проигрыше
# если открыто всё слово - поздравяет с победой
def print_status(letters, good_letters, bad_letters, errors)
	puts "\nСлово: " + get_word_for_print(letters, good_letters)
	puts "Ошибки (#{errors}): #{bad_letters.join(", ")}"
	if errors >= 7
		puts "Вы проиграли :(\n Было загадано слово #{letters.join("")}"
		return
	end
	if letters.uniq.size == good_letters.size
		puts "Поздравляем! вы выиграли!"
		return
	end
	puts "У вас сталось #{(7-errors).to_s} попыток."
end 


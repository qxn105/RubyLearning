# Транслитератор
# Напишите программу-транслитератор: программу, которая берёт русский текст и переводит его в созвучный английский. 
# А если пользователь ввел фразу на английском, программа должна транслитерирорвать на русский.

# Например:
# 
# Введите фразу для транслитерации:
# Отличный ёж
# Otlichnyy yezh
# или:
# 
# Введите фразу для обратной транслитерации:
# Mama mila ramu
# Мама мила раму

# Блиотеки:
# https://github.com/tjbladez/translit
#		gem install translit
#	Translit using autodetection:
#		Translit.convert("Отличный день") #=> "Otlichnyj den'"
#		Translit.convert("Otlichnyj den'") #=> "Отличный день" 
#	Translit forcing target language:
#		Translit.convert("Отличный den'", :russian) #=> "Отличный день"
#		Translit.convert("Otlichnyj день", :english) #=> "Otlichnyj den'"
# не работает (после пробы других библиотек - всё заработало, но с мляутами)

# https://github.com/dalibor/cyrillizer
#		gem install cyrillizer
#		require 'cyrillizer'
#		puts 'kirilica'.to_cyr    # => 'кирилица'
#		puts 'латиница'.to_lat    # => 'latinica'
#	Contribute conversion alphabets if you want yours built into the gem.
#	Or use your own custom alphabet:
# Cyrillizer.alphabet = "alphabet/russian.yml" # path to the alphabet
# алфавит по умолчанию использует мляуты

# https://github.com/yaroslav/russian 
# руссификация стандартной библиотеки I18n
# 	gem install russian
# Чтобы задать локаль по умолчанию в вашем приложении, используйте
#		I18n.default_locale = :ru
# Чтобы установить локаль для текущего треда, используйте
#   I18n.locale = :ru
# — прокси для метода translate I18n, форсирует использование русской локали.
#		Russian::translate
#		Russian::t
# — прокси для метода localize I18n, форсирует использование русской локали.
#		Russian::localize
#		Russian::l
#	— strftime с форсированием русской локали (упрощенный вариант localize)
#		Russian::strftime
#		Russian::strftime(Time.now)
#		=> "Пн, 01 сент. 2008, 11:12:43 +0300"
#		Russian::strftime(Time.now, "%d %B")
#		>> "01 сентября"
#		Russian::strftime(Time.now, "%B")
#		=> "Сентябрь"
#	— упрощенная (без использования хешей I18n) плюрализация для русского языка
#		Russian::pluralize
#		Russian::p
#		Russian.p(1, "вещь", "вещи", "вещей")
#		=> "вещь"
#		Russian.p(2, "вещь", "вещи", "вещей")
#		=> "вещи"
#		Russian.p(10, "вещь", "вещи", "вещей")
#		=> "вещей"
#		Russian.p(3.14, "вещь", "вещи", "вещей", "вещи") # последний вариант используется для дробных величин
#		=> "вещи"
#	— транслитерация русских букв в строке.
#		Russian::transliterate
#		Russian::translit
#		Russian.translit("рубин")
#		=> "rubin"
#		Russian.translit("Hallo Юлику Тарханову")
#		=> "Hallo Yuliku Tarhanovu"
# транслитерация только с русского на латиницу ?

# https://github.com/torbjon/translit_net
# require "translit_net"
# "строка".translit({from: 'ru', to: 'en'})
# транслитерация только с русского на латиницу ?

require "translit"

puts "Введите фразу для транслитерации:"
str = gets.chomp.force_encoding(Encoding.locale_charmap).encode("UTF-8")
puts Translit.convert(str)

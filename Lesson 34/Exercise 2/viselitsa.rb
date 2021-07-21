# encoding: utf-8
#
# Популярная детская игра
# https://ru.wikipedia.org/wiki/Виселица_(игра)
#
# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Подключаем библиотеку unicode_utils. Предварительно её надо установить, набрав
# в консоли:
#
# gem install unicode_utils
#require "unicode_utils"

# В Windows загрузка этой библиотеки может внезапно занят продолжительное время
# (до минуты), если вы столкнулись с такой проблемой, подключите только
# необходимый модуль, написав:
#
# require "unicode_utils/upcase"

# Подключаем классы Game, ResultPrinter и WordReader
require_relative 'lib/game'
require_relative 'lib/result_printer'
require_relative 'lib/word_reader'

# Записываем версию игры в константу VERSION
VERSION = 'Игра виселица, версия 5. (c) Хороший программист'

# Создаем экземпляр класса WordReader
word_reader = WordReader.new
words_file_name = "#{File.dirname(__FILE__)}/data/words.txt"
word = word_reader.read_from_file(words_file_name)

# Создаем игру и прописываем ее версию с помощью сеттера version=
game = Game.new(word)
game.version = VERSION

# Теперь экземпляр ResultPrinter-а нельзя создать без игры
# Именно поэтому порядо создания методов именно такой
printer = ResultPrinter.new(game)

while game.in_progress?
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)

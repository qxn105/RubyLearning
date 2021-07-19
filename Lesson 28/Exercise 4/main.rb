# encoding: utf-8
#
# Программа-магазин музыки, книг и фильмов

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Как всегда подключаем парсер
require 'rexml/document'

require_relative 'product'
require_relative 'book'
require_relative 'disk'
require_relative 'movie'


products = Product.read_from_xml('data/products.xml')

choice = nil

while choice != 'x'
	puts 'Какой товар вы хотите добавить?'
  ['Book', 'Movie', 'Disk'].each_with_index do |product, index|
    puts "#{index}: #{product}"
  end

  choice = STDIN.gets.chomp

  if choice != 'x' && choice.to_i < 3 && choice.to_i >= 0
  	puts 'Укажите стоимость продукта в рублях'
    price = STDIN.gets.chomp.to_i
		
		puts 'Укажите, сколько единиц продукта осталось на складе'
    amount = STDIN.gets.chomp.to_i
	
	  product = [Book, Movie, Disk][choice.to_i].new(price, amount)
		#product = Book.new(price, amount)
		product.read_from_console
		product.save_to_xml('data/products.xml')
  end


end

#puts "Спасибо за покупки, с Вас #{total_price} руб."

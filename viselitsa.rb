# Виселица Е и Ё/И и Й
# В программе «Виселица» есть важный недостаток: она не считает буквы е и ё одной буквой. А следовало бы.

# Было бы гораздо удобнее, если бы она принимала эти буквы за одну и открывала заодно 
# и все буквы ё, если введена е и наоборот. Аналогично с буквами и и й.

# Исправьте программу так, чтобы реализовать эту возможность.

require "./include/game.rb"
require "./include/result_printer.rb"


slovo = ARGV[0]
if(Gem.win_platform? && ARGV[0])
	slovo = slovo.encode(ARGV[0].encoding, Encoding.default_external).encode("UTF-8")
end

game = Game.new(slovo)
printer = ResultPrinter.new

while game.status == 0 do
  printer.print_viselitsa(game.errors)
	printer.print_status(game)
	game.ask_next_letter
end
printer.print_viselitsa(game.errors)
printer.print_status(game)


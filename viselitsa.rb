# Виселица Е и Ё/И и Й
# В программе «Виселица» есть важный недостаток: она не считает буквы е и ё одной буквой. А следовало бы.

# Было бы гораздо удобнее, если бы она принимала эти буквы за одну и открывала заодно 
# и все буквы ё, если введена е и наоборот. Аналогично с буквами и и й.

# Исправьте программу так, чтобы реализовать эту возможность.

require "./include/methods.rb"

#cls

letters = get_letters


errors = 0
good_letters = []
bad_letters = []

while errors < 7 do
  print_status(letters, good_letters, bad_letters, errors)

	puts "\nВведите следующую букву"
	user_input = get_user_input

#  0 — пользователь отгадал букву или такая буква уже была
#  1 — пользователь отгадал букву и всё слово
# -1 — пользователь ошибся и такой буквы нет
	result = check_result(user_input, letters, good_letters, bad_letters)
	if (result == -1)
		errors += 1
	elsif (result == 1)
		break
	end
end

print_status(letters, good_letters, bad_letters, errors)

STDIN.gets
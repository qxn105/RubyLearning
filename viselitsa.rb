require "./include/methods.rb"

cls

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
# Проверяем email
# Напишите программу, которая проверяет является ли введенный текст email-ом.

# Например:

# $ ruby email.rb 
# Введите email:
# install.vv@gmail.com
# Спасибо!

# $ ruby email.rb 
# Введите email:
# Какая-то фигня!
# Это не email

# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts "Введите email:"
str = gets.chomp.encode("UTF-8")

result = str =~ /^[\d\w\.]+@[\d\w\.]+$/
if result
	puts "Спасибо!"
else
	puts "Какая-то фигня!"
	puts "Это не email"
end

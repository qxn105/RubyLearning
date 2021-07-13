# Отправка почты с темой
# Сделайте так, чтобы в нашей программе send_mail.rb тема письма также вводилась пользователем из консоли при отправке.

# Библиотеки и RubyGems
# Сегодня мы на примере простой программы для отправки электронной почты познакомимся с понятием подключаемых модулей - библиотек в Ruby.

# Мы научимся работать с библиотеками, узнаем, как пользоваться утилитой gem и ёе командами: gem update, gem list, gem install. 
# Как находить и устанавливать нужные библиотеки.

# Узнаем, как с помощью require добавлять в программу установленные библиотеки и напишем простенькую программу для отправки почты с помощью гема «Pony».

require "pony"
require "io/console"


my_mail = "qxn105@mail.ru"

puts "Введите пароль от вашей почты #{my_mail} для отправки письма."
password = STDIN.noecho(&:gets).chomp

puts "Кому отправить письмо?"
send_to = STDIN.gets.chomp

puts "Тема письма?"
subject = STDIN.gets.chomp.force_encoding(Encoding.locale_charmap).encode("UTF-8")

puts "Что написать в письме?"
body = STDIN.gets.chomp.force_encoding(Encoding.locale_charmap).encode("UTF-8")

Pony.mail(
	{
		:subject => subject,
		:body => body,
		:to => send_to,
		:from => my_mail,
		:via => :smtp,
		:via_options => {
			:address => 'smtp.mail.ru',
			:port => '465',
			:tls => true,
			:user_name => my_mail,
			:password => password,
			:auntification => :plain
		}
	}
)
puts "Письмо успешно отправлено!"
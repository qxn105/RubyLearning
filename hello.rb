# Hello, file!
# Напишите программу, которая здороваеся в файл hello.txt (пишет строку "Hello, file!" в него).
# Вместо метода puts откройте файл с помощью класса File и запишите строчку в файл с помощью метода file.puts. Не забудьте закрыть файл.

msg = []
msg << "Hello!"
msg << "Привет, дорогой друг!"
msg << "Здравствуй, смертный!"

time = Time.now
curent_path = File.dirname(__FILE__)
f_path = "#{curent_path}/data/hello.txt"
f = File.open(f_path, 'a:UTF-8')
f.puts "#{msg.sample} -- #{time.strftime('%H:%M')}."
f.close
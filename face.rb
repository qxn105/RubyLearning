# encoding: utf-8

# Рожи в файл!
# Сделайте генератор рожиц таким, чтобы он рисовал рожици в файл. Каждый раз в новый, название файла должно состоять из строчки "face", даты и текущего времени.

# Генератор рожиц
# Напишите программу–генератор рожиц с использованием псевдографики: программа должна генерить лицо из произвольно выбранных фрагментов: лба, глаз, носа и рта.

# Эти фрагмены придумайте сами с помощью символов в виде строчек.

# Например, из такого лба / --- \, таких глаз | O o |, носа \ v / и рта \ - /, получится рожица:

#  / --- \
# | O   o |
# \   v   /
#  \  -  /

current_path = File.dirname(__FILE__)
file_path = []
file_path[0] = current_path + '/data/foreheads.txt'
file_path[1] = current_path + '/data/eyes.txt'
file_path[2] = current_path + '/data/noses.txt'
file_path[3] = current_path + '/data/mouths.txt'

time = Time.now
f_out = File.new(current_path + "/data/face - #{time.strftime('%Y-%m-%d %H_%M')}.txt", "a:UTF-8")

i = 0
while i<4 do
	abort "File #{file_path[0]} not found!" unless File.exist?(file_path[0])
	i += 1
end


i = 0
while i<4 do
	f = File.new(file_path[i], 'r:UTF-8')
	lines = f.readlines
	lines [0][0] = ''
	f.close
	f_out.puts lines.sample
	i += 1
end
	f_out.puts
f_out.close
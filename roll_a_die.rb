# encoding: utf-8
#
# Программа, выбрасывающая значение от 1 до 6 — одну игральную кость
#
# (с) rubyrush.ru

i = 0
while i<30
	print "\r#{rand rand(6) + 1}"
	sleep 0.1
	i += 1
end
puts "\r#{rand rand(6) + 1}"

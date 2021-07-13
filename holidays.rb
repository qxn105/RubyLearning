# Сегодня выходной? (с праздниками)
# Улучшите программу из ранних уроков, которая говорит, выходной ли сегодня.
# Сделайте так, чтобы программа говорила, что сегодня выходной не только если сегодня суббота или воскресенье, но и если сегодня один из государственных праздников.
# Список праздничных дней на ближайший год нагуглите в интернете и запишите в файл, который будет использовать ваша программа.

msg = [
	"Сегодня выходной!",
	"Сегодня будний день, за работу!"
]


time = Time.now

f = File.new(File.dirname("__FILE__") + "/data/holidays.txt", "r:UTF-8")
lines = f.readlines
f.close
is_holiday = false
for day in lines[time.month-1].chomp.split(",") do
	if day.include?("...")
		from_to = day.split("...")
		i = from_to[0].to_i
		while i <= from_to[1].to_i do
			#puts i if i == time.day
			is_holiday = true if i == time.day
			i += 1
		end
	else
		#puts day if day == time.day.to_s
		is_holiday = true if day == time.day.to_s
	end
end


puts msg[0] if is_holiday
puts msg[1] unless is_holiday


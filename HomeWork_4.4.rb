#Сегодня выходной?
#Напишите программу, которая подсказывает, выходной сегодня или нет 
#(для простоты мы не учитываем государственных праздников, итак много дней для безделья):
msg = [
	"Сегодня выходной!",
	"Сегодня будний день, за работу!"
]

time = Time.now
day = time.wday  #день недели в виде числа

# obvious variant
if (day == 0 or day == 6)
	puts msg[0]
else
	puts msg[1]
end

# compact variant
# === used to test equality within a when clause of a case statement. (1...10) === 5 returns true.
#puts msg[((1...5) === day) ? 1 : 0]

﻿# Проверка ввода пользователя
# Возьмите вашу игру, которую вы сделали в домашнем задании к уроку про «южное бутово» 
# (если не делали — самое время сделать). В этой игре теперь защитите программу от неправильного ввода вариантов.

# То есть если программа просит выбрать 1. ... 2. ... 3. ..., а пользователь вводит 7 
# или вообще посторонние символы, то программа повторяет свой вопрос и не продолжается пока не будет введен один из доступных вариантов.

# Текстовый квест (свой)


# Напишите свой текстовый квест по мотивам любимой книги, любимого фильма или компьютерной игры.

# Используйте вложенные условия if, возможность множества вариантов ответов (больше двух),
# читкоды (вместо ожидаемых 1, 2 или 3, в определенном месте можно ввести секретное слово и т. п.).
# Попробуйте обеспечить несколько возможных концовок (положительных и отрицательных).

# Смотрите нашу полную версию квеста «Прогулка в Бутово» и дайте волю своей фантазии.
# Здесь нет правильного и неправильного ответа — главное, чтобы программа выполнялась
# и вам было интересно ее создавать, а вашим друзьям в нее играть.

# Очень помогает сначала нарисовать план своего квеста на бумаге.
# Чтобы наглядно представлять себе последовательсность вопросов и все возможные повороты сюжета.


CMD = [
	[
		"1 - Вскопать землю",
		"2 - Посадить репку"
	],
	[
		"1 - Полить грядку",
		"2 - Прополоть грядку",
		"3 - Посадить репку",
		"4 - Покормить Жучку",
		"5 - Поиграть с кошкой",
		"6 - Отдохнуть"
	],
	[
		"Посадить репку",
		"Прополоть грядку",
		"Работы по дому",
		"Погулять с внучкой",
		"Покормить Жучку",
		"Поиграть с кошкой",
		"Отдохнуть"
	],
	[
		"Полить грядку",
		"Прополоть грядку",
		"Работы по дому",
		"Погулять с внучкой",
		"Покормить Жучку",
		"Поиграть с кошкой",
		"Отдохнуть"
	],
	[
		"Тянуть репку",
		"Работы по дому",
		"Погулять с внучкой",
		"Покормить Жучку",
		"Поиграть с кошкой",
		"Отдохнуть"
	],
	[
		"Тянуть репку",
		"Позвать на помощь бабку",
		"Работы по дому",
		"Погулять с внучкой",
		"Покормить Жучку",
		"Поиграть с кошкой",
		"Отдохнуть"
	],
	[
		"Тянуть репку",
		"Позвать на помощь внучку",
		"Работы по дому",
		"Погулять с внучкой",
		"Покормить Жучку",
		"Поиграть с кошкой",
		"Отдохнуть"
	],
	[
		"Тянуть репку",
		"Позвать на помощь Жучку",
		"Работы по дому",
		"Погулять с внучкой",
		"Покормить Жучку",
		"Поиграть с кошкой",
		"Отдохнуть"
	],
	[
		"Тянуть репку",
		"Позвать на помощь кошку",
		"Работы по дому",
		"Погулять с внучкой",
		"Покормить Жучку",
		"Поиграть с кошкой",
		"Отдохнуть"
	],
	[
		"Тянуть репку",
		"Позвать на помощь мышку",
		"Работы по дому",
		"Погулять с внучкой",
		"Покормить Жучку",
		"Поиграть с кошкой",
		"Отдохнуть"
	]
]

MSG_BAD = [
		"Земля как камень. ",
		"Грядка посажена. ",
		"Репка сгнила на корню. ",
		"Грядка пересохла, репка погибла. ",
		"Грядка заросла сорняками. ",
		"Наступили морозы, урожай пропал. ",
		"Вы сорвали спину. ",
		"Бабка не хочет помогать. ",
		"Внучка ушла гулять. ",
		"Жучка убежала. ",
		"Жучка поймала кошку, подрала её немного. ",
		"Кошка поймала мышку и съела её. "
]

MSG_GOOD = [
		"Вы надумали посадить репку. ",
		"Грядка вскопана. ",
		"Грядка посажена. ",
		"Выросла репка большая, пребольшая. ",
		"Бабка довольна. ",
		"Внучка счастлива. ",
		"Жучка сыта. ",
		"Кошка сыта. ",
		"Вытянули репку. "
]
MSG_ASK = "Что будете делать?"

MSG_MOIST = [
	"мокрая",
	"сырая",
	"сухая"
]

turnip_is_seeded = false
soil_is_digged = false
state_moist = 0
state_weed = 0
state_grandma = 0
state_granddaughter = 0
state_dog = 0
state_cat = 0
state_mouse = 0
iter_MsgGood = 0
iter_MsgBad = 0
iter_Cmd = 0
count_try = 0

puts
print MSG_GOOD[iter_MsgGood]

# репка не посажена
while iter_Cmd < 2
	puts MSG_ASK
	puts CMD[iter_Cmd]
	ansv = gets.to_i
	if(ansv>0 and ansv<=CMD[iter_Cmd].size)
		puts  CMD[iter_Cmd][ansv-1].upcase
	else
    print ansv, " - Нет Такого варианта. Будьте внимательней!".upcase
		puts
	end
	puts
	case ansv
	when 1 # вскопать землю
		soil_is_digged	= true
		iter_MsgGood += 1
		iter_Cmd += 1
		print MSG_GOOD[iter_MsgGood]
	when 2
		print MSG_BAD[iter_MsgBad]  # не удалось посадить, земля как камень
	else
		count_try += 1
	end
	abort "Вы перетрудились и слегли в больницу..." if count_try > 3
end

count_try = 0

puts MSG_ASK
puts CMD[iter_Cmd]
ansv = gets.to_i
puts  CMD[iter_Cmd][ansv-1].upcase
puts
if (ansv == 1) 
	soil_is_digged	= true
	print "Почва теперь " + MSG_MOIST[state_moist+1]
else
	if (ansv == 2) 
		soil_is_digged	= true
		print "Почва теперь " + MSG_MOIST[state_moist+1]
	else
		puts MSG_BAD[iter_MsgBad]
	end
end

puts MSG_ASK
puts CMD[iter_Cmd]
ansv = gets.to_i
puts  CMD[iter_Cmd][ansv-1].upcase


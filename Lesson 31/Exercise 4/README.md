Обработка ошибок открытия базы
Добавьте в наш блокнот важное улучшение: обработайте случай, когда база по какой-то причине не открылась. Может, просто не найден файл или во время записи/чтения произошла ошибка.

Примерный результат обработки исключения (обратите внимание на последние строчки):

Привет, я твой блокнот!
Версия 2, записываю новые записи в базу SQLite

Что хотите записать в блокнот?
	0. Memo
	1. Task
	2. Link
1
Что надо сделать?
Купить батон
К какому числу? Укажите дату в формате ДД.ММ.ГГГГ, например 12.05.2003
22.12.2016
Не удалось выполнить запрос в базе notepad.sqlite
no such table: posts
Для искуственного создания ошибки можно, например, удалить файл notepad.sqlite после того, как вы запустили программу, но ещё не создали заметку.


Сымитируйте каждый из способов нарушить связь с базой и посмотрите, какие ошибки напишет вам gem sqlite3, а потом допишите в вашу программу соответствующие конструкции begin-rescue.

Оборачивать в begin-rescue нужно только непосредственные обращения к базе: db.execute и db.prepare.
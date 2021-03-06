# encoding: utf-8
#
# (с) rubyrush.ru
#
# Метод, который ищет все хэштеги в строке. Хэштэгом считается решетка, с
# последующими латинскими или русскими буквами, цифрами, знаками подчеркивания
# или минусами.
#
# Пример использования:
#
# hashtags('Всем #Привет! #hello-world!')
#  => ["#Привет", "#hello-world"]
#
def hashtags(string)
	string.scan(/#[^\.,?!;\s]+/)
#  string.scan(/#[[:word:]-]+/)
end

Объединение хэшей
Вы приехали к бабушке на дачу и пошли за покупками.

Написали два хэша (товар: количество): один для покупок в продуктовом, другой — в хозяйственном. А вышло так, что всё равно в районном сельпо всё продаётся вместе.

Напишите программку, которая объединяет ваши списки в один и выводит его на экран.


Создайте два АМ, где ключи — наименования продукта, а значения — количество, которое нужно купить, как у нас на видео.

Склеить два массива можно методом merge:

all = hash_1.merge(hash_2)
https://ruby-doc.org/core-2.4.0/Hash.html#method-i-merge
Магазин с витриной и конструкторами
Продолжаем развивать наш «Магазин», который мы создали в уроке про наследование классов.

Сделайте так, чтобы из основной программы можно было создать объект класса Book или Film, передав ему кроме цены также другие параметры. Для книги — название, жанр и автора; для фильма — название, год и режиссера.

Напишите также метод to_s для экземпляра класса Film и Book, который возвращает информацию об этом экземпляре одной строкой.

В основной программе создайте пару книжек и фильмов и выведите их в цикле на экран.

Например:

Вот какие товары у нас есть:

Фильм «Леон», 1994, реж. Люк Бессон, 990 руб. (осталось 5)
Фильм «Дурак», 2014, реж. Юрий Быков, 390 руб. (осталось 1)
Книга «Идиот», роман, автор — Федор Достоевский, 1500 руб. (осталось 10)

Напишите у классов Film и Book конструктор, который принимает на вход ассоциативный массив (хэш) и достаньте из этого хэша нужные вам значения, как вы делали в классе Product, чтобы достать из хэша цену и остаток — вызовите родительский конструктор с помощью super.

Потом напишите для экземпляра каждого из классов Film, Book и Product метод to_s, который возвращает строку с информацией о товаре. Например, для фильма — название, год и режиссера + ту информацию, которую вернет метод to_s экземпляра класса Product.



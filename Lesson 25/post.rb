# encoding: utf-8
#
# Программа «Блокнот», заготовка с классами
#
# (с) rubyrush.ru
#
# Базовый класс «Запись» — здесь мы определим основные методы и свойства,
# общие для всех типов записей.
class Post
  # В конструкторе класса определим две переменные экзмепляра: дату создания
  # записи @created_at (текущий момент) и массив строк записи @text (пустой)
  def initialize
    @created_at = Time.now
    @text = []
  end

  # Метод read_from_console вызываться в программе когда нужно считать ввод
  # пользователя и записать его в нужные поля объекта.
  def read_from_console
    # Этот метод должен быть реализован у каждого ребенка, так как именно они
    # знают, как именно считывать свои данные из консоли.
  end

  # Метод to_strings возвращает экземпляр класса в виде массива строк, готовых
  # к записи в файл.
  def to_strings
    # Этот метод должен быть реализован у каждого ребенка, так как именно они
    # знают как именно хранить перевести себя в массив строк.
  end

  # Метод save записывает текущее состояние объекта в файл. Ему все равно,
  # экземпляр какого именно класса мы записываем, т.к. он вызывает универсальные
  # методы file_path для получения пути к файлу и to_strings для получения строк
  # для записи.
  def save
    file = File.new(file_path, 'w:UTF-8') # открываем файл на запись

    # Идем по массиву строк, полученных из метода to_strings, который будет
    # реализован у ребенка и записываем все строки в файл.
    to_strings.each do |string|
      file.puts(string)
    end

    file.close
  end

  # Метод file_path общий для всех классов, он возвращающает путь к файлу, куда
  # записывать текущий экземпляр.
  def file_path
    # Сохраним в переменной current_path место, откуда запустили программу
    current_path = File.dirname(__FILE__)

    # Получим имя файла из даты создания поста и названия класса. Метод strftime
    # формирует строку типа "2016-12-27_12-08-31.txt". Обратите внимание, мы
    # добавили в название файла даже секунды (%S) — это обеспечит уникальность
    # мени файла. А с помощью метода class, вызванного у экземпляра класса
    # мы получим нужный класс, чтобы файл назывался, например:
    #
    # link_2016-12-27_12-08-31.txt
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    # Склеиваем путь из относительного пути к папке и названия файла
    current_path + '/' + file_name
  end
end

# Весь набор методов, объявленных в родительском классе называется интерфейсом
# класса. Дети могут по–разному реализовывать методы, но они должны подчиняться
# общей идее и набору функций, которые заявлены в базовом (родительском классе).
#
# В других языках (например, Java) методы, объявленные в классе, но пустые
# называются абстрактными (здесь это методы to_strings и read_from_console).
#
# Смысл абстрактных методов в том, что можно писать базовый класс и пользоваться
# этими методами, как будто они уже реализованы, не задумываясь о деталях. С
# деталями реализации методов уже заморачиваются дочерние классы.

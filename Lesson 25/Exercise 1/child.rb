# Класс Ребенок
class Child < Parent
  attr_accessor :name
  # Ребенок унаследуте от родителя все методы (конструктор и метод name), а вот
  # метод obedient у ребенка будет возвращать false
  def obedient
    false
  end
end

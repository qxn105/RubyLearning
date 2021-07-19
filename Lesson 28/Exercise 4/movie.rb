class Movie < Product
#	def initialize
#		super
#		@classes << 'Movie' unless classes.include? 'Movie'
#	end	

  def update(options)
    @title = options[:title]
    @director_name = options[:director_name]
    @year = options[:year]
  end

  def read_from_console
		title = nil
		while title==nil do
			title = @title
			if title == nil
				puts "Укажите название фильма"
			else
				puts "Укажите название фильма (#{title})"
			end
			title = STDIN.gets.chomp
		end
    @title = title

		director_name = nil
		while director_name==nil do
			director_name = @director_name
			if director_name == nil
				puts "Укажите имя режисёра"
			else
				puts "Укажите имя режисёра (#{director_name})"
			end
			director_name = STDIN.gets.chomp
		end
    @director_name = director_name

		year = nil
		while year==nil do
			year = @year
			if year == nil
				puts "Укажите год выпуска"
			else
				puts "Укажите год выпуска (#{year})"
			end
			year = STDIN.gets.chomp
		end
    @year = year
	end

  # Для фильма метод info возвращает строку с названием фильма, режиссёром и годом выхода
  def info
    "Фильм #{@title}, реж. #{@director_name} (#{@year})"
  end

  # Переопределим метод создания XML-элемента
  def to_xml
    product = super
    product.add_element('movie', {
      'title' => @title,
      'director_name' => @director_name,
      'year' => @year
    })
    product
  end
end

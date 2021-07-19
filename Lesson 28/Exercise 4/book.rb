class Book < Product
#	def initialize
#		super
#		@classes << 'Book' unless classes.include? 'Book'
#	end	

  def update(options)
    @title = options[:title]
    @author_name = options[:author_name]
  end

  def read_from_console
		title = nil
		while title==nil do
			title = @title
			if title == nil
				puts "Укажите название книги"
			else
				puts "Укажите название книги (#{title})"
			end
			title = STDIN.gets.chomp
		end
    @title = title

		author_name = nil
		while author_name==nil do
			author_name = @author_name
			if author_name == nil
				puts "Укажите автора книги"
			else
				puts "Укажите автора книги (#{author_name})"
			end
			author_name = STDIN.gets.chomp
		end
    @author_name = author_name
	end

  # Для книги метод info возвращает название произведения и автора
  def info
    "Книга #{@title}, автор: #{@author_name}"
  end

  # Переопределим метод создания XML-элемента
  def to_xml
    product = super
    product.add_element('book', {
      'title' => @title,
      'author_name' => @author_name
    })
    product
  end

end

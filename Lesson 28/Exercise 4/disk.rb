class Disk < Product
#	def initialize
#		super
#		@classes << 'Disk' unless classes.include? 'Disk'
#	end	

  def update(options)
    @album_name = options[:album_name]
    @artist_name = options[:artist_name]
    @genre = options[:genre]
  end

  def read_from_console
		artist_name = nil
		while artist_name==nil do
			artist_name = @artist_name
			if artist_name == nil
				puts "Укажите название исполнителя"
			else
				puts "Укажите название исполнителя (#{artist_name})"
			end
			artist_name = STDIN.gets.chomp
		end
    @artist_name = artist_name

		album_name = nil
		while album_name==nil do
			album_name = @album_name
			if album_name == nil
				puts "Укажите название альбома"
			else
				puts "Укажите название альбома (#{album_name})"
			end
			album_name = STDIN.gets.chomp
		end
    @album_name = album_name

		genre = nil
		while genre==nil do
			genre = @genre
			if genre == nil
				puts "Укажите музыкальный жанр"
			else
				puts "Укажите музыкальный жанр (#{album_name})"
			end
			genre = STDIN.gets.chomp
		end
    @genre = genre
end

 # Для музыкального диска метод info возвращает исполнителя, название и жанр
  def info
    "Диск #{@artist_name} - #{@album_name} (#{@genre})"
  end

  # Переопределим метод создания XML-элемента
  def to_xml
    product = super
    product.add_element('disk', {
      'artist_name' => @artist_name,
      'album_name' => @album_name,
      'genre' => @genre
    })
    product
  end
end

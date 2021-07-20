# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts 'Информация о персонале.'

require 'sqlite3'
SQLITE_DB_FILE = 'friends.sqlite'.freeze

db = SQLite3::Database.open(SQLITE_DB_FILE)
db.results_as_hash = false
result = db.execute('SELECT rowid, * FROM companies LIMIT 10')
db.close

abort 'Список компаний пуст.' if result.size == 0

choice = 0
company_id = result[0][0]
if result.size > 0
	puts 'Выберите компанию'
	result.each_with_index do |row, i|
		puts "#{i}: #{row[1]}"
	end
	choice = STDIN.gets.chomp.to_i
	company_id = result[choice][0]
end

puts "Пресонал компании '#{result[choice][1]}':"
db = SQLite3::Database.open(SQLITE_DB_FILE)
db.results_as_hash = false
result = db.execute('SELECT * FROM people WHERE company_id=? LIMIT 10', company_id)
db.close
	result.each do |row|
		row.each do |c| 
			print "#{c}#{' '*(20-c.size)}" unless c.nil? 
			print ' '*20 if  c.nil? 
		end
	end




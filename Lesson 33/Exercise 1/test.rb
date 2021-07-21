require 'sqlite3'
sqlite_db_file = 'notepad.sqlite'.freeze
to_db_hash = {}
to_db_hash['type'] = 'Link'
to_db_hash['text'] = 'проверка'
puts __dir__

db = SQLite3::Database.open(sqlite_db_file)
db.results_as_hash = true
#result = db.execute('SELECT * FROM posts WHERE  rowid = ?', 1)

db.execute(
"INSERT INTO 'posts' (" + 
	to_db_hash.keys.join(',') +
	") VALUES (" +
	('?,'*to_db_hash.keys.size).chomp(',') +
	")",
	to_db_hash.values
)
insert_row_id = db.last_insert_row_id
db.close
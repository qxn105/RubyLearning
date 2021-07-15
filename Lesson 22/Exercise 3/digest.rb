require 'digest'

puts "Введите слово или фразу для шифрования:"

in_phrase = STDIN.gets.chomp.force_encoding(Encoding.locale_charmap).encode("UTF-8")
puts "
Каким способом зашифровать:
1. MD5
2. SHA1"

in_method = STDIN.gets.chomp.to_i
until in_method.between?(1, 2)
  puts 'Выберите 1 или 2'
  in_method = STDIN.gets.to_i
end

case in_method
when 1
  puts Digest::MD5.hexdigest(in_phrase)
when 2
  puts Digest::MD5.hexdigest(in_phrase)
else
  puts "Нет такого метода шифрования."
end
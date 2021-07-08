fruits = ["apple", "banana", "orange"]
puts fruits.class.name

puts
puts fruits[0]

puts
puts fruits

puts
puts fruits.to_s

basket = []
basket << "fruit1"
basket << "fruit2" << "fruit3"
puts
puts basket.to_s

basket.push("cherry", "mango")
puts
puts basket.to_s

basket << "fruit2"
puts
puts basket.to_s

basket.delete("fruit2")
puts
puts basket.to_s

basket.delete_at(0)
puts
puts basket.to_s

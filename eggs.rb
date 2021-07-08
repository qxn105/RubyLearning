# имеется массив с яйцами, цадан числами: хорошие - 0, похие - все остальные значения

# отсортировать: посчитать количество плохих, и переложить хорошие с другой массив

array = [0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -3, 0, 0, 0, 0, 23, 0, 0, 0, 3, 7, -6, 0, 0]

puts "array = " + array.to_s
puts "Всего яиц " + array.size.to_s

puts "\nСортируем..."
array_good = []
count_bad = 0

#for item in array
#	if item == 0 
#		array_good << item
#	else
#		count_bad += 1
#	end
#end
# во время перебора массива таким циклом нельзя модифицировать его (по крайней мере удалять элементы)


i = 0
while i<array.size
	if array[i] == 0 
		array_good << array[i]
		array.delete_at(i)
	else
		count_bad += 1
		i += 1
	end
end 

puts "array = " + array.to_s
puts "array_good = " + array_good.to_s
puts "Плохих яиц: " + count_bad.to_s
puts "Хороших яиц: " + array_good.size.to_s
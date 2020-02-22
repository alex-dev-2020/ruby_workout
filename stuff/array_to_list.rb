=begin
разворачиваю массив построчно (для ДЗ к уроку 6 - при назначении маршрута поезду)
сначала нужно вывести список маршрутов построчно
затем сросить пользователя - какой именно маршрут назначаем поезду (номер)
вместо source подставим my_ralroad.routes
   print index + 1    1-й лемент массива имеет индекс 0 
=end

# создаем массив букв, перемешиваем
source = ('a'..'z').sort_by{rand}

puts 'our random'
print source
puts
source.each_index { |index| print index + 1, ' ' , source.at(index), puts }

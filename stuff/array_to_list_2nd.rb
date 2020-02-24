# другая, более изящная реализация array to list после code review
# через each.with_index(offset)
# про offset объяснение есть здесь:
# https://stackoverflow.com/questions/5646390/ruby-each-with-index-offset/19567086

# создаем массив букв, перемешиваем
source = ('a'..'z').sort_by{rand}

puts 'our random'
print source
puts
source.each.with_index(1) { |index, letter| puts "#{index} #{letter}" }

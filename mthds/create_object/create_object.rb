# универсальный метод создания объекта вызываемый из главного текстового меню
# для ДЗ к уроку 5 курса Thinknetica
def create_object(names_file)
    text_msg = 'Введите назване объекта или 0 для возврата в главное меню:'
    loop do
        # upper bourder
        puts '- - - '
        puts 'item № - Создание объекта'
        print text_msg
        obect_name = gets.chomp
        
        if obect_name == 0
            puts 'Возврат в главное меню'
            break # возвращаемся на уровень вверх
        elsif obect_name.empty? # проверяем на пустое значение имени объекта
          text_msg = 'Названиие объекта не может быть пустым.Повторите ввод:' # меняем значение переменной text_msg на соответствующее
          next
        elsif names_file.found_mame?(obect_name) # отдельный метод класса-хранилища
          text_msg = 'Название объекта [#{obect_name}] уже используется. Повторите ввод:'# меняем значение переменной text_msg на соответствующее + интерполяция
          next
        else
          puts 'Создание объекта [#{obect_name}]' # просто выводим сообщение + интерполяция
          return Object.new(obect_name)
        end
    end
end
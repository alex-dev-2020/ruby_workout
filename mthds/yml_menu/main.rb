require_relative 'menu'

# инициализируем  объект  menu (файл menu.rb)

menu = Menu.new

# цикл 
loop do
  puts 'Начало цикла выбора пункта меню'
# ранее инициализированный объект menu
# используем его метод print_menu
  menu.print_menu
  print 'Введите индекс действия: '
 # получаем от пользователя индекс
  action_index = gets.chomp.strip
# проверяем action_index - пустой или нет
  next if action_index.empty?
# преобразуем action_index в целое
  action_index = action_index.to_i
  break if action_index == menu.exit_index
  # останавливаемся если action_index равен exit_index

  #проверяем пустое ли значение 
  next if menu.action_menu[action_index].nil? || menu.message(action_index).nil?
 # проверяем результат метода (из массива action_menu) с индексом action_index nil? 
 # или аргумент (сообщение) из метода message объекта menu
  begin
    result = menu.message(action_index)
  rescue StandardError => error
    puts "Ошибка: #{error.backtrace.inspect}"
  else
    puts result
  end
end
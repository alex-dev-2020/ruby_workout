require_relative 'select_txt_menu'


menu = {
    1 => 'Это пункт имею № 1',
    2 => 'Это пункт меню № 2',
    3 => 'Это пункт главного меню № 3',
    4 => 'Это пункт главного меню № 4',
    5 => 'Это пункт главного меню № 5',
    6 => 'Это пункт главного меню № 6',
    7 => 'Это пункт главного меню № 7',
    8 => 'Это пункт главного меню № 8',
    9 => 'Это пункт главного меню № 9',
    0 => 'Выход'
}


loop do
  puts 'Главное  меню.'
  puts 'Введите номер для выбора пункта или 0 для выхода:'
  
  choice = selection(menu)

  case choice
  when '1'
    puts 'Это пункт меню № 1'
  when '2'
    puts 'Это пункт меню № 2'
  when '3'
    puts 'Это пункт меню № 3'
  when '4'
    puts 'Это пункт меню № 4'
  when '5'
    puts 'Это пункт меню № 5'
  when '6'
    puts 'Это пункт меню № 6'
  when '7'
    puts 'Это пункт меню № 7'
  when '8'
    puts 'Это пункт меню № 1'
  when '9'
    puts 'Это пункт меню № 1'

  when '0'
    puts 'Завершение работы.'
 break

  when '11' #DEBUG
    puts 'Меню отладки'
   
  end
end 
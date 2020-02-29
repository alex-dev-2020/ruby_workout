#  метод select для текстового меню
def selection(menu_options)
  menu_options.each { |key, value| puts "#{key} - #{value}." }
  print 'Выбор пункта: '

  gets.chomp
end
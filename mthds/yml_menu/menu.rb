require 'yaml'

class Menu
  attr_reader :action_menu, :exit_index
  
  #два геттера action_menu , exit_index
  
  

  def initialize
    @action_menu = parse_menu_from_file('menu.yml')
	# в переменую  action_menu помещаем объект menu.yml методом parse_menu_from_file
	# метод есть далее по тексту
	@exit_index = nil
	# зануляем индекс
  end

 # собственно меню
  def print_menu
    puts 'Выберите действие:'
	# выводим заголовок 
    action_menu.each_with_index do |item, index|
	# перебираем пункты меню из переменной action_menu (файла menu.yml)
      case item[:type]
      when :separator then puts item[:title].nil? ? '' : "\n[#{item[:title]}]"
      when :exit
        @exit_index = index
        print_menu_item(index, item)
      else print_menu_item(index, item)
      end
    end
  end

  def parse_menu_from_file(file_name)
    raise StandardError, "Файл меню не найден (#{file_name})" unless File.exist?(file_name)
    raise StandardError, "Файл меню пустой (#{file_name})" if File.zero?(file_name)
    menu_items = YAML.load_file(file_name)
    raise StandardError, 'Ошибка формата меню' unless menu_items.is_a?(Array)
    menu_items
  rescue StandardError => error
    puts error
  end

  def print_menu_item(index, item)
    puts "[#{index}] #{item[:title]}"
  end

  def title(index)
    action_menu[index][:title]
  end

  def message(index)
    action_menu[index][:message]
  end
end
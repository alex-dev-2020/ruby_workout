# test purpose only Constants
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part
class GoodDog
  DOG_YEARS = 7
  
  attr_accessor :name, :age
  def initialize (n,a)
      self.name = n
      self.age = a * DOG_YEARS
  end
end


# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part
class GoodDog
  @@number_of_dogs = 0
  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts "Let's check how many dogs have been instanced till now"
puts GoodDog.total_number_of_dogs  
puts "Let's create a couple"
dog1 = GoodDog.new
dog2 = GoodDog.new
good_dogs = GoodDog.total_number_of_dogs   
puts "And now we've #{good_dogs} good dogs"
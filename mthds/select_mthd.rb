# https://www.rubyguides.com/2019/04/ruby-select-method/
# using the select method to filter an array of objects
# For example, you can find all the even numbers in a list.
puts "Let's get an even numbers"
even_numbers = []
[1,2,3,4,5,6].each do |n|
  if n.even?
    even_numbers << n
  end
end
puts even_numbers

# Using select requires a block.
# Inside the block, you have to return something that evaluates to true or false, 
# and select will use that to filter your array.
puts '..and now using .select in one line'
puts [1,2,3,4,5,6].select { |n| n.even? }
 

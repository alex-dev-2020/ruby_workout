# just for fun  trying to figure out how it works
# https://en.wikipedia.org/wiki/Quicksort

# https://github.com/matugm/ruby-algorithms/blob/master/qsort.rb

puts 'Please iput size  of our sample'
n = gets.chomp.to_i
size = rand(n)
list = (1...size).to_a
list_r = list.sort_by{rand}
puts 'now ordered'
puts list 
puts ' and now random'
puts list_r

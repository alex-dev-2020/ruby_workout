# !!! THIS WORKS ONLY FOR CURENT DIR /home/ubuntu/environment/ruby_workout/algo
# just for fun trying to figure out how it works
# https://en.wikipedia.org/wiki/Quicksort

# algo from:
# https://github.com/matugm/ruby-algorithms/blob/master/qsort.rb

require './quick_sort.rb'
# 
puts 'Please iput  max size  of our sample'
n = gets.chomp.to_i
size = rand(n)
source = (1...size).sort_by{rand}

puts 'our random'
print source


sorted = quick_sort(source)
puts
puts  "..and now sorted"
print sorted
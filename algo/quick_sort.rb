# fm https://github.com/matugm/ruby-algorithms/blob/master/qsort.rb

# puts 'Please iput size  of our sample'
# n = gets.chomp.to_i
# size = rand(n)
# source = (1...size).sort_by{rand}

# puts 'our random'
# print source
def quick_sort(list)
    
    return [] if list.empty?
    
    groups = list.group_by { |n| n <=> list.first }
    less_than    = groups[-1] || []
    first        = groups[0]  || []
    greater_than = groups[1]  || []
    quick_sort(less_than) + first + quick_sort(greater_than)
  
end

# sorted = quick_sort(source)
# puts
# puts  "..and now sorted"
# print sorted




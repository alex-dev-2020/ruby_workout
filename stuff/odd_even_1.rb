# here's some practice just for fun 

even_numbers = []
[1,2,3,4,5,6].each do |n|
  if n.even?
    even_numbers << n
  end
end
puts even_numbers

puts "and now odd"

odd_numbers = []
(1...44).step(5).each do |i|
    if i.odd?
        odd_numbers << i
    end
end
puts odd_numbers 
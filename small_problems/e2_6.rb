a = []
100.times do |i|# {|index| puts index if index.odd?}
   if i.odd?
    a.push(i)
   end
end

puts a


value = 1
while value <= 99
  puts value
  value += 2
end

a = []
1.upto(99) {|i| puts i if i.odd?}

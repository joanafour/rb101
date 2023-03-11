puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f

tip =  (tip_percent * 0.01) * bill
total = (tip + bill).ceil(1)

puts "The tip is $#{tip}"
puts "The total is $#{total}."

puts "Enter the length of the room in meters:"

length = gets.chomp

puts "Enter the width of the room in meters"
width = gets.chomp


area = length.to_i * width.to_i

area_in_feet = ""
area_in_feet = area * 10.7639
puts "The area of the room is #{area} square meters (#{area_in_feet.ceil(2)} square feet)"


=begin
SQMETERS_T0_SQFEET = 10.7639

puts "==> Enter the length of the room in meters: "
length = gets.to_f

puts "==> Enter the width of the room in meters: "
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQ).round(2)

puts "The area of the room is {square_meters}" + \
"square meters (#{square_feet})."

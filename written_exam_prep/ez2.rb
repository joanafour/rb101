#1

age = rand(20..200)
puts "Teddy is #{age} years old!"
#2

puts "Enter length of room in meters:"
length = gets.to_f

puts "Enter width of room in meters:"
width = gets.to_f

area = (length * width * 10.7639).round(2)
puts "The area of the room is #{area} square feet"

puts "What is the bill?"
bill = gets.to_f
puts "What is the tip percentage?"
tip = gets.to_f

total = bill + ((tip/ 100) * bill).round(2)
puts "The total is $#{total}."


puts "When is your age?"
age = gets.to_i

puts "At what age would you like to retire"
retirement_age  = gets.to_i

 retirement_year = Time.new.year + (retirement_age - age )
years_work =   retirement_year - Time.new.year

puts "It's #{Time.new.year}. You will retire in #{retirement_year}. You only have #{years_work} years of work to go!"

puts "what is your name?"
name = gets.chomp
if name.end_with?("!")
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
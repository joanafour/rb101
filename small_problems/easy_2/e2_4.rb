puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

current_year = Time.new.year
years_until_retirement = retirement_age - age

retirement_year = current_year + (years_until_retirement)
puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_until_retirement} years of work to go!"
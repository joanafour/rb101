def leap_year?(year)
  year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
end

loop do
  puts "Please enter a year greater than 0"
  user_year = gets.chomp.to_i
    if user_year > 0
      p leap_year?(user_year)
    break
    end
end

def leap_year?(year)
  year % 100 == 0 ? year % 400 == 0 : year % 4 == 0
end

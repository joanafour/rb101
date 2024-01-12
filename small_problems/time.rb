
def just_time(time, secs, breaks = 0)
  time = Time.new
  time = time + secs
  hr = time.hour
  min = time.min
  sec = time.sec
   return "#{hr}:#{min}:#{sec}"
   if breaks > 0
    time = time + breaks
   end
end


puts "Welcome to the time-study calculator, future Joana!"

puts "Please put in the number of hours you want to study for: "
hours = gets.chomp.to_i
puts "Please put in the number of minutes (in addition to the hours) that you want to study for: "
minutes = gets.chomp.to_i


hrs_to_secs = hours *  3600
minutes_to_secs = minutes * 60
secs = hrs_to_secs + minutes_to_secs

puts "Do you want breaks (need I ask, future Joana)? P.S. I am proud of you."
y_or_n = gets.chomp




if y_or_n.upcase.start_with?("Y")
  puts "How many?"
  number_breaks = gets.chomp.to_i
  puts "How many minutes long do you want each break to be?"
    length_breaks = gets.chomp.to_i
    breaks = number_breaks * length_breaks * 60
    puts "The time is now #{just_time(Time.new, 0, 0)}"
    puts "You will be done studying #{just_time(Time.new, secs, breaks)} with #{number_breaks} #{length_breaks} minute breaks."
  elsif y_or_n.upcase.start_with?("N")
    puts "The time is now #{just_time(Time.new, 0, 0)}"
    puts "You will be done studying #{just_time(Time.new, secs, 0)}, with no breaks."
end





 # puts "You will be done studying at #{hours}:#{minutes} with no breaks."
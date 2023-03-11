puts "What is your name?"
name = gets.chomp

if name.end_with?("!")
  name.delete!("!")
  name.upcase!
  puts ("HELLO #{name}. WHY ARE WE SCREAMING?")
else
  puts ("Hello #{name}.")
end

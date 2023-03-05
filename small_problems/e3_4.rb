puts "Please write word or multiple words: "

words = gets.chomp

no_spaces = words.delete(" ")#.size
#num_of_charachters 
puts "There are #{no_spaces.count(no_spaces)} characters in #{words}."

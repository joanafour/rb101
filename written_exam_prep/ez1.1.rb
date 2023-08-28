def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

puts reversed_number(12345) == 54321

def center_of(string)
  if string.length.odd?
  index = (string.length / 2)
  puts "#{string[index]}"
  elsif string.length.even?
    index1 = (string.length / 2) - 1
   index2 = (string.length / 2)
  puts "#{string[index1]}#{string[index2]}"
  end
end

center_of("joana")
center_of("blue")

center_of('I love ruby')
center_of('Launch School')
center_of('Launch')
center_of('Launchschool')
center_of('x')
def print_in_box(string)
   puts '+' + '-' * (string.length + 2) + '+'
   puts "|" + " " * (string.length + 2) + "|"
   puts "| " + string + " |"
   puts "|" + " " * (string.length + 2) + "|"
   puts '+' + '-' * (string.length + 2) + '+'
end

s = ''
print_in_box(s)




=begin
def print_in_box(string)
  horizontal_border = '+' + '-' * (string.length + 2) + '+'
  vertical_border = "|" + " " * (string.length + 2) + "|"

  puts horizontal_border
  puts vertical_border
  puts "| " + string + " |"
  puts vertical_border
  puts horizontal_border
=end

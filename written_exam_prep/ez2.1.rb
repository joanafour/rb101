=begin
num = (1..99)
num.each{|i| puts i if i.odd?}

(1..90).each{|i| puts i if i.even?}

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end

=end



def format(string)
  puts ">> #{string}"
end

format("Please enter an integer greater than 0:")
integer = gets.chomp.to_i

format("Enter 's' to compute the sum, 'p' to compute the product.")
operation = gets.chomp

if operation == 's'
  while counter <= 15
    
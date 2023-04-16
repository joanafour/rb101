puts "Please enter an integer greater than 0:"
int = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp


sum = int  # sum = 3
count = 1
until count = int # 1 = 3
  sum += count # 3 = 3 + 1 = 4,
  count += 1 # 2
end


if operation == "s"
  puts "The sum of integers between 1 and #{int} is #{sum}"
end


if operation == "p"
  puts "The sum of integers between 1 and #{int} is #{product}"

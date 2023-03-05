puts "Enter the first number:"
num1 = gets.chomp.to_i

puts "Enter the second number:"
num2 = gets.chomp.to_i

def add(num1, num2)
  sum = num1 + num2
  puts "#{sum} = #{num1} + #{num2}"
  diff = num1 - num2
  puts "#{diff} = #{num1} - #{num2}"
  product = num1 * num2
  puts "#{product} = #{num1} * #{num2}"
  quo = num1 / num2
  puts "#{quo} = #{num1} / #{num2}"
  rem = num1 % num2
  puts "#{rem} = #{num1} % #{num2}"
  pow = num1 ** num2
  puts "#{pow} = #{num1} ** #{num2}"

end

add(num1, num2)


nums = []
puts "Enter the first number:"
num1 = gets.chomp.to_i

puts "Enter the second number:"
num2 = gets.chomp.to_i

operations = [:+, :-, :*, :%, :**]

operations.each do |operand|
  puts "==> #{nums[0]} #{operand} #{nums[1]} = #{nums.inject(operand)}"
end
# literally don't know what the inject method is 
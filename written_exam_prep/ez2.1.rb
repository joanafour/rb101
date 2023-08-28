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

=begin

def format(string)
  puts ">> #{string}"
end

format("Please enter an integer greater than 0:")
integer = gets.chomp.to_i

format("Enter 's' to compute the sum, 'p' to compute the product.")
operation = gets.chomp

counter = 1

if operation == 's'
  sum = integer
  until counter == integer
  sum += counter
  counter += 1
  end
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
elsif operation == 'p'
  product = integer
  until counter == integer
    product *= counter
    counter += 1
  end
  puts "The product of the integers between 1 and #{integer} is #{product}."
end

def compute_sum(number)
  total = 0
  1.upto(number) {|value| += value}
  total
end

def compute_product(number)
  total = 1
  1.upto(number) {|value| total *= value }
  total
end
=end

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# returns Alice Bob
# name points to the string object holding value "bob" save_name is set equal to
# name so now both variables are pointing the string object holding value bob
# name gets reassigned to string object holding value alice, since reassignment
# only changes which object a variable points to and not the object itself
# save_name still points to bob
# however in the example below when the object theat name is pointing to is actually mutated
# both remain pointing to the same stirng object, only it is now mutated to read BOB
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
#both point to BOB


def negative(integer)
  if integer >= 0
integer = integer - integer * 2
  else
  integer
  end
end

puts negative(5)
puts negative(-3)
puts negative(0)

def negative(number)
  number > 0 ? -number : number 
=begin
def string(int)
  arr = []
  while arr.length < int
    arr.insert(3, '1')
  end
  arr
end


puts string(6)
=end

=begin
num = rand(2..200)
num = 24

puts "Teddy is #{rand(num)} years old!"

puts "Teddy is #{num} years "
=end
=begin
j = "beautiful"
j = "ugly"
j = 'cute'
puts "Joana is so #{j}"
=end

=begin
puts "Enter the length of the room in meters: "
length = gets.chomp.to_i

puts "Enter the width: "
width = gets.chomp.to_i

area = length * width
area_ft = (area * 10.7639).round(2)

puts "The area of the square room is #{area} (#{area_ft} square feert)."
=end

=begin
puts "What is the bill?"
bill = gets.chomp.to_i

puts "What is the tip percentage?"
tip = gets.chomp.to_i

tip_amount = (tip) * 0.01 * bill
totoal = tip_amount + bill

puts "The tip is $#{tip_amount}"
puts "The total is $#{totoal}"
=end

=begin
puts "What is your age?"
age = gets.chomp.to_i
t = Time.new.year

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

retire_year = t + (retire_age - age)
work = retire_age - age

puts "It's #{t}. You will retire in #{retire_year}."
puts "You only have #{work} years of work to go!"
=end

=begin
puts "What is your name?"
name = gets.chomp
reply = "Hello #{name}."

if name.end_with?('!')
  puts "HELLO " + name.delete_suffix('!').upcase + ". WHY ARE WE SCREAMING?"
else
  puts reply
end

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO !{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

=end

=begin
a = (1..99).to_a

a.each do |num|
  if num.odd?
    puts num
  end
end

value = 1
while value <= 99
  puts value
  value += 2
end
=end

=begin
value = 1
while value <= 99
    puts value + 1 # 2, 4
    value += 2 #3, 5
end

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end
=end

=begin
def format(string)
  puts ">> " + string
end

format("Please enter an integer greater than 0: ")
integer = gets.chomp.to_i
num2 = integer - 1

format("Enter 's' to compute the sum, 'p' to compute the product.")
operator = gets.chomp

if operator == 's'
  while num2 > 0
  integer += num2
  num2 -= 1
  end
elsif operator == 'p'
  while num2 > 0
  integer *= num2
  num2 -= 1
  end
end
puts integer

def compute_sum(number)
  total = 0
  1.upto(number) {|value| total += value}
=end
=begin
def negative(num)
  if num >= 0
    num - (2 * num)
  else
    num
  end
end

 p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
=end

=begin
def prompt(string)
  puts "Enter the #{string} number:"
end

arr = []
prompt("1st")
num1 = gets.chomp.to_i
arr << num1

prompt("2nd")
num2 = gets.chomp.to_i
arr << num2

prompt("3rd")
num3 = gets.chomp.to_i
arr << num3

prompt("4th")
num4 = gets.chomp.to_i
arr << num4

prompt("5th")
num5 = gets.chomp.to_i
arr << num5

prompt("6th")
num6 = gets.chomp.to_i

if arr.include?(num6)
  puts "The number #{num6} appears in #{arr}."
else
  puts "The number #{num6} does not appears in #{arr}."
end
=end

=begin
def prompt(string)
  puts "==> #{string}"
end

def result(num1, num2, operation, result)
  "#{num1} #{operation} #{num2} = #{result}"
end

prompt("Enter the first number: ")
num1 = gets.chomp.to_i

prompt("Enter the second number: ")
num2 = gets.chomp.to_i

sum = num1 + num2
difference = num1 - num2
product = num1 * num2
quotient = num1 / num2
modulo = num1 % num2
power = num1 ** num2

prompt("#{num1} + #{num2} = #{sum}")
prompt(result(num1, num2, "-", difference))
prompt(result(num1, num2, "*", product))
prompt(result(num1, num2, "/", quotient))
prompt(result(num1, num2, "%", modulo))
prompt(result(num1, num2, "**", power))
=end

=begin
print "Please write word or multiple words: "
words = gets.chomp

no_spaces = words.delete(" ")

puts "There are #{no_spaces.length} characters in \"#{words}\". "
=end

=begin
def multiply(num1, num2)
  num1 * num2
end

puts multiply(5, 3) == 15


def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64
=end

=begin
def xor?(value1, value2)
  if
    (value1 && value2) || (value1 == false && value2 == false)
    false
  else
    true
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end
=end
=begin
def palindrome?(string)
   string == string.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
=end

=begin
def real_palindrome?(string)
  a = ("a".."z").to_a
  a2 = ("0".."9").to_a
  b = string.downcase.chars

  str = ""
  b.each do |element|
    if a.include?(element) || a2.include?(element)
      str << element
    end
    end
  str == str.reverse
end
=end

=begin
def palindromic_number?(num)
  puts num.to_s == num.to_s.reverse
  # palindrome?(number.to_s)
end

def uppercase?(string)
  string == string.upcase
end
=end

=begin
def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

def short_long_short(string1, string2)
  arr = [string1, string2].sort_by {|e| el.length}
  arr.first + arr.lash + arr.first
end
=end

def century(year) #finds the century of the input year
  if year < 99
    century = 1
  elsif
    year.to_s.end_with?("0")
    century = (year) /100
  else
  century = (year.ceil(-2)) / 100
  end
  century = century.to_s
 last_two = century[-2].to_s << century[-1]

  if ("4".."20").include?(century) ||("4".."20").include?(century[-2])
    century << "th"
  elsif century.end_with?("3")
    century << "rd"
  elsif century.end_with?("2")
    century << "nd"
  elsif century.end_with?("1")
    century << "st"

  end
  century
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201)
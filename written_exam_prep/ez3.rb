=begin
def prompt(number_place)
  puts "Enter the #{number_place} number:"
end

arr = []
prompt("1st")
num1 = gets.chomp.to_i
arr << num1
puts num1
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
prompt "Enter the last number:"
num6 = gets.chomp.to_i

if arr.include?(num6)
  puts "The number #{num6} appears in #{arr}."
else
  puts "The nubmer #{num6} does not not appear in #{arr}."
end
=end
=begin
def arrow(value)
  puts "==> #{value}"
end



arrow("Enter the frist number:")
num1 = gets.chomp.to_i

arrow("Enter the second number:")
num2 = gets.chomp.to_i

arrow("#{num1} + #{num2} = #{num1 + num2}")
arrow("#{num1} - #{num2} = #{num1 - num2}")
arrow("#{num1} * #{num2} = #{num1 * num2}")
arrow("#{num1} / #{num2} = #{num1 / num2}")
arrow("#{num1} % #{num2} = #{num1 % num2}")
arrow("#{num1} ** #{num2} = #{num1 ** num2}")
=end

=begin
puts "Please write word or multiple words: "
wordy = gets

char = 0
puts wordy.chomp.each_char {|c| char += 1 if c != " "}


puts "There are #{char} char in  \"#{wordy}\". "


print 'Please write word or multiple word: '
input = gets.chomp
number_of_characters = input.delete(" ").size
=end

=begin
def multiply(num1, num2)
  num1 * num2
end

puts multiply(3, 5)

def square(num1, power)
  num1 ** power
end

puts square(5, 3)
puts square(-8, 3)
=end
=begin
def xor?(exp1, exp2)
   if (exp1 == false && exp2 ) || (exp2 == false  && exp1 )
    true
   else
    false
   end
end
=end
#methods whose name ends in a ? should usually only return the explicit true and false values

=begin
def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p  xor?(5.odd?, 4.even?)
p  xor?(5.even?, 4.odd?)
=end

=begin
def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end



real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
=end

=begin
def palindromic_number?(number)
  number.to_s == number.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
=end


def uppercase?(string)
  string == string.upcase
end

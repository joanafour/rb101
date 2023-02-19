=begin
def factors(number)
  divisor = number
  factors = []
  if number <= 0
    puts ("Please enter a number greater than 0.")
  else
  begin
    factors << number / divisor if number % divisor == 0 # a remainder of zero indicates that num is a factor
    divisor -= 1
  end until divisor == 0
  factors # methods return the last line called therefore this will return the factors array
end
end
=end

def factors(numbers)
  divisor = number
  factors = []
while divisor > 0
  factors << number / divisor if number % divisor == 0
   divisor -= 1
end
  factors
end

puts factors(0)
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


=begin
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
=end


def factors(number)
  divisor = number
  factors = []

  while divisor > 0
     if number % divisor == 0
      factors << number / divisor
      divisor -= 1
      puts factors
     else
      next
    end
  end

end

factors(6)


def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end


def say_hi
  puts 'Hello!'
 end
  greeting = say_hi


 word = ''
  if greeting
  word = 'Something'
 elsif greeting == false
  word = 'Something else'
 else
  word = greeting
 end
  p "Wow" if word



=begin
def factors(number) #10
  divisor = number #d = 10
  factors = [] # []
  while divisor > 0
    if number % divisor == 0
    factors << number / divisor
    divisor -= 1 #runs down to zero until it eventually doesn't meet the if condition and moves onto else

   else
    puts "That is not valid input."
    break
    end
  end
end
=end


=begin
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end
=end

=begin
def factors(number) #10
  divisor = number #d = 10
  factors = [] # []
  if divisor <= 0
    puts "That is invalid input."
  end

  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

puts factors(540)
=end
# 1. finds what the factors are anything that can be divided by it is a factor
# 2. the def will retun factors, without it, it won't return anything



def foo(param = "no")
  "yes"
end

# retuns "yes"
def bar(param = "no")
  param == "no" ? "yes" : "no"
end


bar(foo)

bar("yes")
#returns no

def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga" # 1st stays the same
  string_param_two << "rutabaga" # 2nd changes
end

string_arg_one = "pumpkins" #same
string_arg_two = "pumpkins" #pumpkinsrutabega
tricky_method(string_arg_one, string_arg_two) # pumpkins #pumpkinrutabega

puts "String_arg_one looks like this now: #{string_arg_one}"
puts "String_arg_two looks like this now: #{string_arg_two}"

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
# one two three
#one two three
#two three one


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

# He can fix this by performing return false instead of break.



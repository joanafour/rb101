# ask the user for two numbers
# ask for an operation to perform
# perform the operation on the two numbers
# output the result

# gets and puts are in a module called kernel, not out in space
def prompt(string)
  Kernel.puts "=>" + string
end

def valid?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end


prompt("Welcome to Calculator!")

loop do #main loop

number1 = ''
loop do
prompt("What's the first number?")
number1 = Kernel.gets().chomp
if valid?(number1)
  break
else
  prompt("That is an invalid number, invalid.")
end
end

number2 = ''
loop do
prompt("What's the second number?")
number2 = Kernel.gets().chomp
if valid?(number2)
  break
else
  prompt("That's an invalid number, idiot!")
end
end

operator_prompt = <<-MSG
What operation would you like to perform?
1) add
2) subtract
3) multiply
4) divide
MSG

prompt(operator_prompt)
operator = ''
loop do
operator = Kernel.gets().chomp()
if %w(1 2 3 4).include?(operator)
  break
else
  prompt ("Must choose 1, 2, 3, or 4")
end
end

prompt("#{operation_to_message(operator)} the two numbers")
result = case operator
         when '1'
          result = number1.to_i() + number2.to_i()
         when '2'
          result = number1.to_i() - number2.to_i()
         when '3'
          result = number1.to_i() * number2.to_i()
         when '4'
          result = number1.to_f() / number2.to_f()
         end

prompt("the result is #{result}")

prompt("Do you want to perform another calculation? (Y to calculate again)")
answer = Kernel.gets().chomp()
  break unless answer.upcase == "Y"
end


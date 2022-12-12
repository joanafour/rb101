=begin 
input: number 1, number 2, operation type
output: resulting number from operation
clarifying questions 
ask the user for two numbers 
ask for the type of operation to perform: + - * / 

clarifying questions: 
is the first number the numerator/minuend? 
what do we do if user inputs 0 as the denomiator
are we doing just integers or floats as well? 

implicit requirements: 
numbers must be valid

Ask the user for integer 1. 
Ask the user for integer 2. 
Ask the user for an operation to perform. 
Perform the operation on the two numbers
output the retult

Kernel.gets.chomp()
Kernel.puts()
=end 

Kernel.puts("Welcome to the calculator!")
Kernel.puts("Please input the first number.")
num1 = Kernel.gets.chomp
# Kernel is a module
 

Kernel.puts("Please input the second number.")
num2 = Kernel.gets.chomp()
 
Kernel.puts("Please select an operator 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets.chomp()

if operator == '1'
  Kernel.puts("The sum of #{num1} and #{num2} is #{num1.to_i + num2.to_i}." )
elsif operator == '2'
  Kernel.puts("The difference of #{num1} and #{num2} is #{num1.to_i - num2.to_i}." )
elsif operator == '3'
  Kernel.puts("The product of #{num1} and #{num2} is #{num1.to_i * num2.to_i}.") 
elsif operator == '4'
  Kernel.puts("The quotient of #{num1} and #{num2} is #{num1.to_f / num2.to_f}.")
end 


 


# 1. Better integer validation; validate that the input is a number 

def valid_number?(num)
num.to_i != 0 # not a great way to validate that the user has input a number
end 


def valid_number1?(num)
  if 
  num.to_i != 0 || num.to_f != 0 
  break
  elsif num.to_i == 0 && num.to_s == "0" || (num.to_f) / 1 == 0.0 && num.to_s == "0" break
  else 
    false 
  end 
  

# 1 
def integer?(input)
  input.to_i.to_s == input
end 

#1 
def integer?(input)
  Integer(input) rescue false 
end 

#2 
def check?(input)
  input.to_i.to_s == input || input.to_f.to_s == input 
end 

#2 
def float?(input)
  input.to_f.to_s == input
end 

def number?(input)
  integer?(input) || float?(input)
end 



# 3. 

def operation_to_message(op)
  word = case op # save the return value of case into a variable 
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end 
 
x = "A random line of code" 
word # make sure to return that variable, likeso by putting the variable in the last line of the method
end 

prompt("#{operation_to_message(operator)} the two numbers")
 
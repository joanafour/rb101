=begin
#1
What does the following code return?
What does it output? Why? What concept does it demonstrate?

a = “Hello”
b = a
a = “Goodbye”
puts a
puts b

Local variable a is initialized on line one so that it references/points to an object with class string whose value is  "hello"
Local variable b is intialized on line two as being equal to a, which means a and b now both point to string object with vlaue "hello" and they are aliases
(Or we are initalizing local variable to the string object that variable a is pointing to)
a is then reasigned to a different string object whose value is "goodbye", this means that a and b point to different objects a to
the string object whose value is "hello" and "b" remains pointing to a string object whose value is goodbye; they are no longer aliases
since they no longer point to the same object

variables a and b call on the method puts; the puts method will always display the string and return nil so a outputs goodbye and b outputs hello
and they both retun nil

this example demonstrates the concept of variable pointers where both variables initally point to the same object and upon reassignment
point to two different objects

#2
a = 4

loop do
  a = 5
  b = 3


  break
end

puts a
puts b


Local variable a is initalized on line one so that it references/points to an object, with class integer, whose value is 5
We then call the loop method and pass the do..end block to it. A is reassigned to 5 and local variable b is initalized




the break keyword is used to break out of the loop

The variable a initalized in the outerscope (outside of the block) is directly accessible to the inner scope (within the block) and blocks
so a gets reassigned to 5
variable a calls on method puts where it outputs integer 5 and returns nil

Since variable b is initalzed in the inner scope it is not accessible to the outerscope. local variable scope is defined by where it is initalized,
so variable b's scope is limited to within the block and is unavaible to the outer scope

variable b calls on method puts where an error, undefined local varialbe, is thrown up

demonstrates variable scope

#3

a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b


puts a returns nil and an output of integer 3
local variable a is initalized and points to integer object with value 3

the do end block is passed onto the loop method where local ariable c is initalized and is pointing to integer objec with value 3
a gets reassigned so that it points to the integer object that c points to the integer object c points to (3)
local variable c is initalized in the inner scope and is unavailable to the outerscope
the break keyword is used to break out of the loop method
variable a calls on the puts method


puts b returns nil and an output of 2
local variable b is initialized in the outerscope and points to the integer object with value 2, it is not used elsewhere in the code

demonstrates variable scope and reassignment

#4

3, 2, 1,

hello
hello
hello

we have the definition example which trakes in one argument.

local variable i is initialized and points to an integer object with value 3, it is going to be used to control the number of executions
the loop performs.

on the last line we call on the method with the string literal hello

string literal is passed in as an argument assigned to the paramater str and made available as a local var to the method def
do...end block is passed into loop method
on the first iteration the string hello is passed in as an argument to the puts method, outputs string hello
the substraction assignment variable reassigns  i to 2, next iteration same thing only i is reassigned to 1 and same thing during third
but this time i is reassigned to 0 and the conditonal requirements are met on the next line so we break out of the loop

so calling the method on the string literal hello will output hello three times and
returns the last line evaluated result of the last line of the expression,
so it returns nil WHY


#5
def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)


greetings(word) outputs
Hello
Good Bye

and returns nil

local variable word is initialzied in the outerscope and points to string object with value Hello
the variable is then passed in as angrument to the greeetings method, assigned to the mehtod's parameter str
and made avaiable to the to the method as a local variable
puts str output hello
puts hello outputs hello
last line evaluated in method is returned, puts always returns nil, nil is returned

method def output?




#
arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do
  sum += arr[counter]  # 1, 2 , 3 , 4
  counter += 1
  break if counter == arr.size
end

puts "Your total is #{sum}"

# a really convoluted way to have counter and sum point to a value, do they point to the same object?




=end
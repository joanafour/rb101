=begin
LOCAL VARIABLE SCOPE
EXAMPLE 1
local variable a is initalized and references string object with value "Hello"
variable b is initialized and is set equal to a so that it now references the same object a does
a is reassigned to string object value "Goodbye"
a and b now reference different obejcts
this demonstrates the concept of variables as pointers and reassignment

EXAMPLE 2
variable a is initialized and references integer object with value 4
loop method is call and a block denoted by (do..end) is passed in as an argument
within the block var a is reassigned to integer object with value 5, since the outscope is accesible to the block
var b is initalized and references 3
var a calls on the method puts and and 5 is output, nil is returned
var b calls on the method puts, however since the inner scope of the block, is not accessible to the outscope we get an error message of
undefined local variable
this demonstrates scoping rules when a block is part of the method invocation

EXAMPLE 3
variable a is initialized and references integer object with val 2, likewise with variable b referencing
2
loop method is called on and a block is bassed in whereby var c is initialized and references 3
a is set equal to c and now references the same object as c (blocks can access outerscope)
the break keyword is used and we are broken out of the loop
puts method is called on a and b accordingly and a now points to 3 while b still points to 3'
demonstrates scoping rules with blocks

EXAMPLE 4
method example is defined with one parameter str
var i is initialized and references  integer object with value 3
the loop method is called on and a block is passed in
puts methods is called an str is passed in as an argument
i  serves as an iterator subtracting by increments of one every time we run through the loop
the loop is broken out of when i = 0, looping through a total of three times
thus the value held by str is output thrice
and when we call on the method with string literal hello, we have the following output
hello
hello
hello
with a return of nil
this demonstrates calling on the method and utilizing iterators within a loop

EXAMPLE 5
the method greetings is defined with one parameter str
str and string literal "Goodbye" call on the puts method
variable word is initialized and references string object with value "Hello"
word calls the greeting method hello goodbye is output and nil returned
demonstrates calling on the method

EXAMPLE 6
local variable arr references array object with value [1,2,3,4]
variable counter is initalized and references integer object w/ val 0
variable sum is initialized and set references integer object w/ val 0
loop method is invoked and a block is passed in as an argument
value of sum and arr[counter] that is the arr at intex 0 (which is one) are argument to the addition reassignment method
loop is broken out of using the break keyowrd if counter is equal to 4
the loop iterates through the array 4 times then
since sum has been reassigned to equal the sum of the variables in the array
we the puts method is called on it outputs "Your total is 10" string interpolation is used #{}
and nil is returned
this demonstrates iterating through an array using a loop

EXAMPLE 7
local variable a is initialized and references string object with value 'Bob'
the integer literal 5 calls on the times method and it and the block are passed in as arguments
block parameter is denoted by x
a is reassigned to 'Bill' five different times
5 is returned since the times method returns self
p a outputs and returns 'Bill'
this demonstrate block scope

EXAMPLE 8
local variable animal is initialized and references string object with value "dog"
loop method is called on and block parameter is denoted by _ (seemingly unmeaningful)
animal is reassigned and now references string object with value "cat"
variable var is initalized and references string object with value "ball"
break keyword breaks out of the loop
value of animal calls on the puts method and cat is output
puts var results in an error message since the outerscope cannot access variables
initialized in the innerscope of the block
this demonstrates scoping and reassignment


VARIABLE SHADOWING
Example 1
animal = "dog"

loop do |_| 
  animal = "cat" 
  var = "ball" 
  break
end

puts animal
puts var

Line 1, local variable animal is initialized and references string object with value "dog"
Line 3, loop method is called on and a block is passed in as an argument with parameter _
Line 4, animal is reassigned to reference string object with value "cat"
Line 9, puts method is called with the value of the variable animal passed to it - this output "cat"
Line 5, local variable var is initialized and references string object with value "ball"
Line 10, puts method is caled on with the value of the variable var passed to it, an error message is returned
Lines 9 and 10 demonstrate that a variable initialized in the outerscope of the block is available to the inner scope but not vice versa

EXAMPLE 2
n = 10

1.times do |n|
  n = 11
end

puts n

Line 1, local variable n is initialized and references integer object with value 10
Line 3, integer 1 calls on the times method





































MOCK EXAM


greeting is initalized and references string object with value 'hello'
loop method is invoked and a block is passed in as argument (denoted by do...end)
within the block, greeting is reassigned to 'hi' because blocks have access to the outer scope
the puts method is invoked on and the value of greeting 'hi' is passed in as an argument and 'hi' is output
this demonstrates block scoping rules, blocks even when passed into a method have direct access
to variables in the outer scope
=end
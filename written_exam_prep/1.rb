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




#6
arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do
  sum += arr[counter]  # 1, 2 , 3 , 4
  counter += 1
  break if counter == arr.size
end

puts "Your total is #{sum}"

# Local variable arr is initialized and is pointing to an array object with value [1234]
Local variables counter and sum are initialized and both point to the same object since every number
holds a reference to an object that doesn't change/is immutable

the loop method is called and a block is caled in using do end

sum uses additon assignment and arr calls setter method, where we reference are able to reference every element in the array that arr points to by index number
which is representd by counter which is reassigned a number on the following line by using addition assignment counter = conter + 1
counter is used to access initially index zero up until index up until the last index, index 3
it then breaks out of the loop since after using a conditional if statement with the is equal to operator
as counter is reassigned to 4 (no index 4)
and the size method called on the arr returns the number of elements  in the array

#7
a = 'Bob'

5.times do |x|
  a = 'Bill'
end

p a

The literal 5's object (that holds the number 5) calls on the method.

Returnms all the numbers from zero to one less than the number itself. It iterates the given block, passing in increasing
values from 0 up to the limit.
If no block si given, an Enumerator is returned instead


The method returns the object that calls on the method, in this case 5 (integers are immutable so it returns 5)
=end


animal = "dog"
loop do |_|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var


=begin
The variable animal is intialized and points to the string object with value "dog"
THe loop method is invoked and a block is passed into the method, block does have a parameter that it does  not use in the block
nil is returned (WHY?)


reassigns var animal to a different object with value "cat"; variable var is initialized within the block and therefore cannot be accessed by the
outerscope
so puts animal outputs cat and put var will return a error that says that the variable is undefined

=end

a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b

=begin
Outerscope local variable a is initalized and references an object with value 4
Outerscope local varaible b is initalized and references an object with value 2
The times method is called on the object that is pointed to by the literal 2
a is assigned to the blocks parameter and now there are 2 local variable in the ineer scope with the same name
this prevents access to the outer scope local variable
so that on the next line the block parameter a is initialized to 5 rather than the outerscope a being reassigned from 4 to 5
the next line calls on the puts method to output a which is a, since the times method calls the given block 2 tiems with each integer
in 0-1,the value of a, or 5, is output twice
  5
  5
times method returns self, that is the object that called on it, mutated or not in this case 2 (it's an integer can't be mutated)

since the a in the ineerscope is initalized in the inner scope, the outer scope can't touch it
so puts a outputs 4 since it can only access the outerscope a
and puts b just outputs 2
both return nil since it's calling on the puts method

this example demonstrates variable shadowing and block scope,
inner scope variable a is shadowed by outerscope variable b
and variables initialized within a block cannot be accessed outside of the block
=end

n = 10

1.times do |n|
  n = 11
end

puts n

=begin
local variable n is initalized and references a number object with value 1

the times method is called on literal 1 pointing to object with value 1
block denoted by do end is passed into times method
  block parameter is denoted also by variable n
  block parameter n is used on the next line, as opposed to outerscope variable n, and is initalized so that it points to object with value 1
  object that outerscope variable n points to with value is calls on the puts method and returns nil, n inside block and n outside
  block are two different variables and since the n initalized within the block cannot be accessed due to block scope and it being a local
  variable the n initialized on the outerscope is what is used
=end

animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal

=begin
local variable animal is initalized so that it references string object with value "dog"
multi-line block is passed to loop method where parameter with variable name animal is defined since parameter animal and variable
animal have same name block uses parameter animal and initialized animaal to cat
break keyword is used to break out of the loop

otuerscope variable animal is calls on puts method bc paramter with var name animal is initialized within the block and cannot be accessed by
outerscope
=end



a = "hi there"
b = a
a = "not here"

=begin
local variable a is initalized and points to string object with value "hi there"
local variable b is initalized nad set equal to a, both variables are now pointign to same string object with value "hi there"
a is reassigned to stirng ojbect with value "not there", a remains pointing to other object because reassignment changes where pointer points to
and not actual object o
a returns not here
and b returns hi there
the concept it demonstrates is variables as pointers
=end


a = "hi there"
b = a
a << ", Bob"

=begin
local variable a points to string object with value "hi there"
local variable b initialized and set equal to what variable a and now points to the same object that a points to
mutating append method is called on object pointed to by variable a "hi there" so that object mutates to
hi there, bob
since the object itself was changed the vriable a and b which were in the first place both pointed to that object now
point to mutated string object with value "hi there, bob"

this demonstrates the concept of mutating methods and object mutation
=end

a = [1, 2, 3, 3]
b = a
c = a.uniq

=begin
local variable a points to the array object with value [1,2, 3, 3]
b is set as being equal to b so now it points to that same array object
c is set as being equal to what is a is when the uniq method is called on it, which traverses through the
array and delteres ay repeatign values so that c is assigned to array object with value [1,2,3]
this uniq method is distinguishable from the uniq! method in that it is not mutating

this show the concept of initializing a variable to the value returned when a non mutating method is called another variable
=end

def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)

=begin
method is defined with variable b for the paramter
the map method is calls om b
,ap returns a new array with what it executes in the block 

local variable a is initalized and points to array object with value ['a', 'b', 'c']
test(a) returns a vaule of ["I like the letter a", I like the letter b, I like the letter c"]
a is passed in as an argument to the mehod definition and is assigned to mehtod s parameter



=end
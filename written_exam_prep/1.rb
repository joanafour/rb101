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
Local variable b is intialized on line two as being equal to a, which means a and b now both point to string object with vlaue "hello" /and they are aliases/
(Or we are initalizing local variable b so that it pointsto the string object that variable a is pointing to)
a is then reasigned to a different string object whose value is "goodbye", this means that a and b point to different objects a to
the string object whose value is "hello" and "b" remains pointing to a string object whose value is goodbye; /they are no longer aliases/
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

variable b calls on method puts where an error, undefined local varialbe or method, is thrown up

demonstrates variable scope when a method is invoked with a block

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
a gets reassigned so that it points to has it has the same value as c; now both pointing to the same ojbect
local variable c is initalized in the inner scope and is unavailable to the outerscope
the break keyword is used to break out of the loop method
the value of variable a calls on the puts method
3 is output, and nil is returned
puts b returns nil and an output of 2

local variable b is initialized in the outerscope and points to the integer object with value 2, it is not used elsewhere in the code

demonstrates variable scope and reassignment within a block
#4
def example(str)
  i = 3 
  loop do   
    puts str   
    i -= 1   
    break if i == 1
  end
end

example('hello')

method example is definied with one paramete
within the method,
local variable i is initialized and points to an integer object with value 3, it is going to be used to control the number of executions
the loop performs.

on the last line we call on the method and the value of string literal 'hello' is passed in as an argument

string literal is passed in as an argument assigned to the paramater str and made available as a local var to the method def
do...end block is passed into loop method as an argument
puts method is invoked with value of str passed in as an argument, in this case hello is output
i is uses addition reassignment to be reassignhed to it's value - 1; so now i = 2
keyword break is usedo n the conditional statement if i == 0
so there are three iterations when i = 2, 1, & 0, respectively, then the loop is broken out of

so the loop runs three times and each time outputs hello

nil is returned as per the break statement since the return value of an
if statement alone returns nil

  this demonstrates object passing and invoking the loop method inside the method
  a counter is used (i) to keep track of the number of iterations that we want the loop to do

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
a is passed in as an argument to the mehod definition and is assigned to method's parameter
map executes the block for each element of the array, represented by parameter letter and
returns a new array whose values are the return values of each iteration of the block where
each element of the array is interpolated to return "I like the leter a, I like the letter b I like the
letter c "
THis demonstrates passing an array to the the map methdo
=end

a = 5.2
b = 7.3

a = b

b += 1.1

=begin
local var a is initialized to point to float object with value 5.2
local var b is initialized to point to float object with value 7.3

a is set a being equal to b so now both a and b point to object with value 7.3
b is reassigned with addition reasignement to 8.4
since numbers are immutable in ruby it is not that the object b points to is mutated
rather it points to a new object with value 8.4
a's pointer still points to object with value 7.3

This shows variable reassignment on an immutable object.

=end

def test(str)
  str  += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str



=begin
Method definition test is written with parameter str
str uses addition reassignment to add ! to str
stri then uses mutating downcase emthod to change all uppercase letters into lower care

local variable test_string is initialized so that it points to string object with value "Written Assessment"
this object calls on the test method and test_str is passed as an argument
The return value of this method is on test_str is 'written assessment!'

object pointed to by test_str then calls on the puts method where it outputs
'Written Assessment' since when it passed to the method
since ruby is pass by reference value and passes a copy of the reference of the orginal object to the method
since it is only a copy and not the original binding, the original binding can't be changed

and since the first thing the method def does with the argument passed in is change the reference to point to a different
object that will not be reflected in original object since the binding of the orginal arguments can't be changed

str is first reassigned and points to a different object and the
mutating downcase method is called on this reassigned object not the actual object so the
value of the original object that test_str points to is unchanged

this shows the concept of  pass by reference value
=end



def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b

=begin


local variable a is initialized and references number object with value three
b is initialized to the return value of variable and integer literal referencing number object with value 2

puts a outputs 3 and returns nil
puts  b putputs 5 and returns nil

method definition passes in two arguments assigned to parameters (variables) x and y
x is set equal to reference the object with the value of x + y

when arguments a and 2 are passed in the value that a references gets reassingned in the method

  a  = 3 + 2


=end

def increment(x)
  x << 'b'
end

y = 'a'
increment(y)

puts y

=begin

the method example is defined and takes 1 parameter
local var x is initalized by calling on the append method
the append method appends string b to x


local variable y is initalized and references string object with value a
on the next line y is passed in as an argument to the method increment
where the object that points to y is mutated to have value 'ab'
calling on the method retrurns this value
and calling the puts method on y outputs the value and returns nil

this demonstrates how mutating methods work
=end


def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name


=begin

change_name method is defined with one parameter name
local variable name is initialized and references string object with value 'bob'

in the outerscope local variable name is initialzied and references string object with value jim
change_name method is called with argument name a and returns 'bob'
put name output 'jim' since reassigned and does not change the object outside the nmethod since ruby is pass by reference
value - reassigning where the copy of a reference points (changing the copy of the reference, does not change the reference itself
does not actually reassign the reference itself****

=end

def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name

=begin
method cap is defined with one parameter
local variable str is initialzied and calls on the capitalize! mehtod

local variable name is initialized and points to string object with value "jim"
name is passed in as an argument when it called on the cap method
JIM is returned
since the cap method uses a mutating method within its body on a mutable object
when name calls on the puts method the output is JIM and returns nil bc
now name points to JIM


=end


a = [1, 3]
b = [2]
arr = [a, b]
arr

a[1] = 5
arr


=begin
local variable a is initialized and references array object with value [1,3]
local variable b is initialzied and references array object with value [2]
local variable arr is initlailzied and references an array with arrays a & b so an array of arrays  and returns [[1, 3], [2]]

a[1] = 5; reassigns index on (that is value 3) on the array a; while indexed assignment reassigns which object
values point to within the array the array itself is mutated so arr returns [[1, 5], [2]]

=end


arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

puts arr1
puts arr2

=begin
local variable arr1 is initialzied and points to an array object with 3 elements contained in an array ['a', 'b', 'c']
local variable arr2 is initialzied and points a different
array object that is referenced when the dup method is called on, arr1 is passed in as the argument
the map! method is called on with arr2 passed in as the argument and a the do end block passed in as an
argument, having one parameter
local variable char is initalized and calls on the upcase method
this returns A B C

when arr1 calls on the puts method it outputs a b c
when arr2 calls on the puts metod it outputs A B C
  this is because the map! method method in this instance executes the given
  block for each element of the array and returns self with the retuns values of each iteration of the block
in this case it returns the upcased valeus of a b and c and returns a mutated self with values A B C
=end


def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)


=begin
fix method is defined with one parameter
local variable value is initialized and calls on the upcase! method whe n stirng literal '!' is
also passed in as an argument
the method definition returns the value of value on the last lne

outside the mehtod local variable s is initalized and references a string object with value 'hello'
local variable t is initialized and points to the object that is referenced when
s is passed in as an argument to the fix method
in this case t = "HELLO!" the retun value; and since both upcase and concat mutates the the oject that is pointed to by s
S AND T NOW REFERNECE THE SAME OBJECT

=end

def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
fix(s)
s

=begin
fix method is defined with one parameter
value is initialized and references (a different) object that is pointed at when the upcase method is called on value
value calls on the concat method and passed in stirng literal '!' as argument

outside the method definition local variable s is initialzed and reference a string object with value 'hello'
since ruby is pass by reference value only a copy of the reference to 'hello' is passed in
so when on the second line of the method definition value is reassigned to a different object - where value acalls on the
non-mutating method upcase; thereby reassigning it to a different object
since the actual reference is not being reassingned but a copy of that reference, it has no effect on the original object
and anything thereafter, in this case the mutatating concat method also references whatever object reassignment has told it to
(not the original object)
thereby returning 'hello'

=end


def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)


=begin
method fix is defined with one parameter
local variable value is initalized and calls on the append method to append another argument string literal 'xyz'
value is reassigned to object that is pointed to when value calls on the upcase argumetn
value calls on the concat method and '!' is passed in as an argument as well

outside the method local variable s is initalized and references string object with value 'hello'
t is initialized to return value when the fix method is called with argument s
s and t reference different object since on the third line of the fix definition value references a different object
=end

def fix(value)
  value = value.upcase!
  value.concat('!')
end

s = 'hello'
t = fix(s)

=begin
method fix is defiend and passes in aone aparameter
local varialbe value is initialized and referneces the return value of value calling on the upcase! method
since the upcase method, the originial object and referenced by value and the object referenced by value.upcase!
are one in the same
vlaue calls on the concat method and stirng literal '!' is also passed in as an argument

outside the method lcoal variable s is initalized and references stirng object with value 'hello'
t references the return value of the fix method with s passed in as the argument "HELLO!"
s and t reference the same object object and after the last line if s were to be called on again it would retun the mutated
'HELLO!' since hte object has now called on the method
=end


def fix(value)
  value[1] = 'x'
  value
 end

 s = 'abc'
 t = fix(s)

=begin
method fix is defined and passes in one paramter
value is initalized and uses index assignment to assign the value of index 1 of value to 'x'
last line returns value

local variable s is initalized and references string object with value 'abc'
local variable t references the return value when s is passed in as an argument to the fix method which in this case is 'axc'
index assignment is mutating so both variables reference reference the same mutated object from the last line on
=end


def a_method(string)
  string << ' world'
end

a = 'hello'
a_method(a)

p a


=begin
method a_method is defined with one paramter
local variable string is initializied and is uses the append method to append the string ' word'

in the outerscope local variable a is initialized and references stirng object with value 'hello'
a_method is called on and a is passed in as an argument, returns 'hello world'
since the object that is referenced by a is mutated when the append method (mutating) is called on it
when p is called on by a, p displays (returns) 'hello world'


=end


num = 3

num = 2 * num
=begin
=end

a = %w(a b c)
a[1] = '-'
p a


=begin
local variable a is initialized and references array object with value ["a", "b", "c"]
a uses index assignment to reassign the value at index 1 from b to -
a calls on the p method and outputs/returns a - c
=end

def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names

=begin
method add_name is defined with two parameters
local variable arr is initialized and is set equal to arr concactenated with name

outside the method local variable names is initialized and references array object with value ["bob", "kim"]
we call on the add_name method and pass in names and string literal 'jim'; array ["bob", "kim", "jim"] is returned
we call on the puts method and pass in argument names which outputs ['bob', 'kim']
when the array gets passed into the method  it is reassigned, therefore the object itself is not mutated and since ruby is pass by reference copy
changes to made to names' reference, via reassignment, is not possible
when we call the puts method
=end

array = [1, 2, 3, 4, 5]

array.select do |num|
   puts num if num.odd?
end

=begin

local variable array is initialized and references an array object with value [1,2,3,4,5]
array calls on the select method; a block denoted by do end is passed in as an argument
  the select method travereses through each number in the array and the puts method is invoked on num
  on the condition that true is odd;
  so the self method considers if the return value of num.odd? evaluates to true or not.
  outputs
  1
  3
  5
  and a new empty array is returned since the block does not returns any true values only nil from the puts method
array still references [1,2,3,4,5]

This demonstrates calling on a non-destructive method
=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |n| n.odd? }

=begin
local variable array is initialzied and points to array [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array calls on the select method and a block denoted by {} is passed in as an argument
the select method travereses through each element in the array dneoted by the parameter(/local variable?) n
the array returning a new array if the conitions within the block
return true, in this case it returns [1,3,5,7,9] and outputs nothing
=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n|
  n + 1
end
p new_array

=begin
local variable arr is initialized and references array object with value [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
local variable new_array is initialized and references the return value when arr is passed in as an explicit caller
to the select method, and the block denoted by do..end is passed into the method
  this method returns a new_array where each element calls on and is passed to the mathematic operand plus method to reference
  the object reassigned when one is added to the integer
  the p methods is called to new_array and outputs and returns [2,3,4,5,6,7,9,10,11]
=end


words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array

=begin
local variable words is initialized and references array object with value ["jump", "trip", "laught", "run", "talk"]
local variable new_array is iniitalized and references the array object returned when
words calls on the map method and a block as denoted by do...end is passed in as in as an argument
  which is where we iterate through the array elements to check which elements start with a t
  a new array is returned based on the return values (t/f) for each iteration of the block
  [false, true, false, false, true]
p new_array outputs and returns this array

=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |n| puts n }


=begin
local variable arr is initialized and reference array object with value [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr call on the each method where a block as denoted by {} is passed in as an argument
within the block we call the puts method and pass in each element of the block
which is output
and the orginal array itself is returned since nothing destructive has happened to the array within the block

=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

incremented = arr.map do |n|
            n + 1
            end
p incremented

=begin
local variable arr is initialized and points to arr object with
value [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

local variable incremented is initialized and points to the
object that contains the return value when
the arr calls on the map method and passed in as an argument
block denoted by do...end is also passed in as argument to the method
where each element the array is traversed through; element is denoted
by n in the block parameter and local variable n is uses addition (n + 1) to
and returns a new array w/ a different obj id
the points to an arr with values [2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

p incremented outputs and returns this value

=end
# HOW TO WRITE THAT WE ARE USING THE PARAMETER VARIABLE
# So on line 5 we are actually assigning integer 5 to the local variable a passed in as a parameter of the do..end block a

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n|
  n > 1
end
p new_array

=begin
local var arr is initialized and points to array object with value [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
local var new_array is initialized and points to the object that is referened when
map method is called on by arr and a block denoted by do..end is also passed in as
  an argument; the block has one parameter which
  on the next line is uses the > operand  sign to return  an array
  withs evaluated result of the statement (true/false)
arr continues to point to its orginal value/object [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
while new_array points to the new array returned by map method
=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n|
  n > 1
  puts n
end
p new_array

=begin
local variable arr is initialized and refereces array object with value [1,2,3,4,5,6,7,8,9,10]
local variable new_array is initialzied and references the same object referenced
when the map method is call on arr and the ;
block is passed into the method as an argument. Block is defined with one parameter n
local variable n which we passed in as a parameter is written with comparison operater
n calls on the puts method
the outputs each element and returns an array of [nil,nil,nil,nil,nil,nil.nil...] since the
it is the last expression in the block and each returns an array of the return values of said expression
and since puts will always return nil we are left with an array of nils
new_array calls on the p method with outputs and returns this

=end




a = "hello"

[1, 2, 3].map { |num| a }

=begin
local variable a is initialized and references string object with value "hello"
array literater [1,2,3] calls on the map method and a block is also passed in as an argument as denoted by {}
the block is defined with one parameter num
since variables initialized in the outerscope (outside block) can be referenced within the block
the array is traversed through element by element so three times and each time it returns the value of a
so a new array ["hello", "hello", "hello"] is returned
=end

[1, 2, 3].each do |num|
  puts num
end

=begin
array literal is passed to each method as an argument; block is also passed in as an arugment and is defined with
one parameter
local variable num which was assigned to parameter calls on the puts method 1 2 3 is output and array 123
returns object passed in, the original array unchanged
=end

[1, 2, 3].any? do |num|
  num > 2
end

=begin
array literal [1,2,3] is passed as an argument to the any? method
block is passed into the method as an argument with one parameter
since one of the elements in the array 3 meets the criteria that
it is greater than true, true is returned

=end

{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end

=begin
hash { a: "ant", b: "bear", c: "cat" } is passed into the any? method
as an argument as is the block denoted by do..end which take two
parameters
local variable value passed in as a parameter and calls on the size method
which returns the count of characters of the string values in the hashes
assigned to value (ant bear cat)
since none of the vales in the hash have strings with a larger character size
than 4 false is returned
=end

[1, 2, 3].all? do |num|
  num > 2
end

=begin
array literal is passed to the all? method as an argument and so
is the block denoted by do...end which is defined with one parameter
local var num, passed in as the parameter, and evaluate whether num
or each element of the array that gets passed in larger than 2 using the
> comparison operator and return a boolean value
in this case false is returned
=end

{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end

=begin
hash literal is passed to the all? method as an argument
a block denoted by do..end is passed to the method as an argument
  and defined with two parameters
  local variable value passed in as a parameter calls on the length method
  so when the ollege is iterated through
  each value in the hash key-value pairs is evaluated to using the comparison ooperator
  >= to determine whether all of the values have a length greater than or equal to 3
in this case they all do and true is returned
=end

a.each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end

=begin
array literal [1,2,3] is passed to the each_wirh_index method as an argument
block denoted by do..end is passed in as an argument to hte method and is defined with two parameters
iterates through the elements of the array and the indices of those elemetns
string "The index of #{num} is #{index}. calls on and pass as an argument to the puts method
the array that a passed in is retured
The index of #{num} is #{index}. is output num representing each

=end

a = "Hello"

if a
  puts "Hello is truthy"
else
  puts "Hello is falsey"
end

=begin
local varialbe a is initialized and refernece stirng object with value "hello"

if/statement is written so that if a evaluates to true
  the string literal "Hello is truthy" calls on and is passed to the puts method as an argument if a
  evaluates to true
  if a doesn't evalute to true the puts method is inovked on the string literal hello this is falsey

everything in ruby evaluates to true or is truthy except for nil and false;
and while a does not equal true but it  evaluates to true in the conditional

#gets method will pause the program and wait for the users input
#excuution stops when it gets to gets wait for the user ot input smthing
# hit the enter key and then the program will





=begin
Line 1: local variable greeting is initialized and refeerences string
object with value 'Hello'

line 3: loop method is invoked and a block is passed in as an argument
to it, as denoted by do..end
line 4: greeting is reassigned inside the block and
now references string object with value 'Hi'; since variables in the outerscope
of the block can be accessed within the block ruby uses outerscope greeting variable and
reassigns it
line 5: break keyword breaks out of the loop
line 8: puts method is invked, value of the variable greeting is passed in as an argument

=end

=begin
puts greet has an output of 'Hey!'

prior to this
on line 8 local variable greet is initialized and points to string object with value 'Hey'
and on the following line the value of greet is passed in as an argument (as the first argument), along with the value of stirng literal 'Hello' (2nd) to
the replace method when it is invoked

when it passed into the method and assigned to parameter str and value, a copy of the reference pointing to the objects of greet and 'hello' are
  passed in repectivly
when str is reassigned to the value of value borh stri and value point to the same object within the method but outside the method thsi is not
  reflected because reassigning the copy of a reference does not change the actual referenee; while we can change the object that greet points to 'Hey!' we cannot change
  where greet points to (that is, to the object that string literal 'Hello' points to)
 greet remains pointing to string object with value "HeY!"


=end

def test
  puts "written assessment"
end

var = test

if var
  puts "written assessment"
else
  puts "interview"
end


=begin

method test is defined; in the body the puts method is called and the value of string literal "written assessment" is passed in as an argument

outside the method local variable var is initialzied and is set equal to test, so it references the return value of the test method;
so it outputs "written assessment" since that is what is output by puts "written assessment" and returns nil
now it point to nil

if/else statement begins two lines over where the first conditional is met, that is if var evaluates to true is met
  the puts method is called and the value of stirng literal "written assessent" is passed into it as an argument
else if it does not evaluate to that the puts method is called and the value of stirng literal "interview" is passed into it
  except for false and nil, every expression evaluates as true, but since nil is returned by var it doesnt' meet the condtions and
  "interview" is output and again nil is returned
  This demonstrates the e
=end

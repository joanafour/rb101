=begin
vid 1

some characters out in space could be either a variable or a method

p stri where stri is a method outputs and returns the return value of the method invocation

if you have both a var and method, ruby will call retun var


Where does code come front?
CORE LIBRARY
kernel is a class nad it core; you can get rid of that; part of the ruby, methods available to use -
anyhting available to us comes from the core library

STANDARD LIBRARY
anthing frm standard lib4rary we have to require beforehand; requries loading (thing in core library don't)

EXTERNAL LIBRARY OR GEM
somebody else wrotem one is pry
a gem is just a library that you install
Developers tend to use these that doesn't come with ruby they may have iot replace some core libraries
one is called pry

pry library game from pry gem
rais is another type of library

=end



#  str = "hello"

#  loop do
#   str = "word"
#   break
#  end

#  str

=begin
line 1 is where the parameter (local method variable) is initialized
capturing the return value is just when you save a methods return
value to a varible
add exclamation marks to your own destructive methods
=end

=begin

how do we know if a method is going to mutate a method?
  if the operation inside the method invokes a destructive call


objects have value; changing the value of one object means
that all of the variables pointing to that object reflect that change

mutation changes the value of the object; all the variables
pointing to that object see the change

what's a data structure or collection
data structure is a general term meaning a structure holding data
collection is a type of data structure that referts to arr hash stri some sort of collection oriented
you can have multiple items in it
collections: arrays, hashes, strings
hash rocket symbol delineates key from value
keys in a hash must be unique, retrievable by key (think of a dictionary)
to retrieve the value of value with a key hash.feth(:some_symbol) is preffered
  instead of with brackets


  ITERATORS ARE METHOD S

  arr.each do|n|
  block is being passed in to the each method
 chunks of code that we can pass into the method and that method does
 something with it
 each executes the block for every element in the array
 each will give you a block argument and you can do whatever you want
  to each element in the array

how to add an element in the middle of the array
select returns a new array depending on the criteria specified in the block
# sele
=end



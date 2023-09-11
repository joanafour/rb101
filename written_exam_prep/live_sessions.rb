=begin


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



 str = "hello"

 loop do
  str = "word"
  break
 end

 str 
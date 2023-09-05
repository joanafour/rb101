=begin
#1
#<Date: -4712-01-01>

#<Date: 2016-01-01>
#<Date: 2016-5-01>
#<Date: 2016-5-13>

#2
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
=end


a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

# index error
# a b c d e nil nil beats me
# raises another error or moves string object beats me over to index 49

5.step(to: 11, by: 3) {|value| puts value}
=begin
5
8
=end

s = 'abc'
puts s.public_methods(false).inspect



#if all is false, #public_methods limits the output to just those methods in the object that called #public_methods; for our purposes, this means just the methods defined directly in the String class.

# If the all parameter is set to false, only those methods in the receiver will be listed.


a = [5, 9, 3, 11]
puts a.min
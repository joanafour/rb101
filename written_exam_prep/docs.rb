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

5.step(to: 10, by: 3) {|value| puts value}
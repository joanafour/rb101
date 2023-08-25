=begin
def repeat(string, integer)
  integer.times {puts string}
end


repeat('Hello', 3)


def is_odd?(integer)
  integer.odd?
end



puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

=end

def stringy(number)
  integer = 1
  string = '1'
until  string.length == number
    if string.length < number && integer == 1 #
    integer -= 1
    integer.to_s << string
    elsif integer == 0
    integer += 1
    integer.to_s << string
    end
  end
end



puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)

=begin

#WHat's my bonus

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

def calculate_bonus(integer, boolean)
  if boolean
  bonus = integer/2
  bonus
  else
    bonus = 0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
=end

def print_in_box(string)
  string.length 
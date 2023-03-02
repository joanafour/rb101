def is_odd?(some_integer)
  some_integer = some_integer + some_integer * 2
  some_integer.odd?
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

# def is_odd?(number)
# number % 2 == 1
# end  
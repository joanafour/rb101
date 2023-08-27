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
=begin
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
=end
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

=begin
def print_in_box(string)
  length = string.length
  g = ""
  h = ""
  length.times {g << "-"}
  length.times {h << " "}
  puts ("+-#{g}-+")
  puts "| #{h} |"
  puts "| " + string + " |"
    puts "| #{h} |"
  puts ("+-#{g}-+")


end

print_in_box("Joana")
print_in_box("")
print_in_box("JULIA YOU GOOF I WANT TO GO TO ALASKA")


=end

=begin
def triangle(integer)
  # needs to iterate integers times
  # needs a spaces, where spaces = integer - 1 * " "
  spaces = integer - 1
  triangles = integer - (integer - 1)
  loop do
    puts " " * spaces + "*" * triangles
    spaces -= 1
    triangles += 1
    break if spaces == -1
  end
end

triangle(5)
=end

=begin
def enter(string)
  puts "Enter a #{string}:"
end

enter("noun")
noun = gets.chomp
enter("verb")
verb = gets.chomp
enter("adjective")
adjective = gets.chomp
enter("adverb")
adverb = gets.chomp

puts "A #{adjective} #{noun} #{verb} #{adverb} with another #{noun}! That is something. "
=end


def reversed_number(number)
  a = number.digits
  loop do
  a.delete_if{|foxes| a.to_s.start_with?("0")}
  break if a.start_with?(!"0")
  end
  puts a
end

reversed_number(01234)
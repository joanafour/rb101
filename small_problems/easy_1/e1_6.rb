def triangle(int)
  x = 0 # stars
  y = int - 1 # spaces
  while x < int
    x += 1
    puts ' ' * y + '*' * x
    y -= 1
  end
end

triangle(9)


=begin
def triangle(num)
spaces = num - 1
stars = 1

num.times do |n|
  puts (' ' * spaces) + ('*' * stars)
  spaces -= 1
  stars += 1
end
end

  =end

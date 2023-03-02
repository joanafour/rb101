def stringy(number)
  arr = []
  [1, 0].cycle(number/2) {|element| arr.push(element)}
  puts arr.to_s
end


puts stringy(6)


def stringy(size)
  numbers = []

  size.times do |index| # use times to iterate based on the number indicated by size
    number = index.even? ? 1 : 0 # for each iteration use the index block parameter in a conditional
    numbers << number
  end

  numbers.join
end

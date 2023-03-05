def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num) # it's just any two number so those numbers can be the same and thus the same variable
end

if square(5) == 25
puts "true"
end



def power_to_the(num, power)
  multiply(1, num ** power)
end

p power_to_the(2, 3)
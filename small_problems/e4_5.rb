def multisum(num)
  sum = 0
  i = 0
  while i < num
    i += 1
    if i % 3 == 0 || i % 5 == 0
    sum += i
    end
  end
  sum
end

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

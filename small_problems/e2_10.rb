def negative(num)
  if num > 0
   num = num - num * 2
  else
   num
end
end

negative(5)
negative(-3)
negative(0)

def negative(num)
 num > 0 ? -(num) : num
end

negative(5)
negative(-3)
negative(0)

def negative(number)
 -number.abs
end


 
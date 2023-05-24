a = [1,4,8,11,15,19]
#find elements whose value exceeds 8 with Array#bsearch method
value = a.bsearch {|x| x > 8 }
puts value 
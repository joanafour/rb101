def xor?(arg1, arg2)
 arg1 == true && arg2 == false || arg1 == false && arg2 == true
end

if
xor?(5.even?, 4.even?) == true
puts true
en
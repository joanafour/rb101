def xor?(arg1, arg2)
 arg1 == true && arg2 == false || arg1 == false && arg2 == true
end


def xor?(value1, value2)
  !!((value1 && !value2)) || (value2 && !value1))
  # if's not false that one or the other is true; !! forces to return a boolean
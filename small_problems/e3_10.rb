def palindrome?(string)
 string.reverse == string
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

def palidromic_number_with_zero(number)
  num.digits == num.digits.reverse
end 
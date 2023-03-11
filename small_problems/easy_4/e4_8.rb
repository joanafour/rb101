DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, '-' => 'n', '+' => 0
}

def string_to_integer(string)

  digits = string.chars.map { |char| DIGITS[char]}
  if digits.include?('n')
  digits.shift
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  -value
  else
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
  end
end

string_to_integer('-570')

def string_to_signed_integer(str)
  value = string_to_integer(str.delete('+-'))
  str.start_with?('-')? -value : value 
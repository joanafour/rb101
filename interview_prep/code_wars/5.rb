





# need to separte string into characters
# iterate through each character
# find out if a character is a vowel
#


def solve(string)
 string.gsub!(/[aeiou]/, '*')
 counter = 0
 string = string.chars
 arr = []

 string.each do |char|
  if char == "*"
    counter += 1
  elsif char != "*"
    counter = 0
  end
  arr << counter
 end
  arr.sort!
  arr[arr.length - 1]
end

puts solve("codewarriors")
puts solve("suoidea")




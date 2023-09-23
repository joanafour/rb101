



# input is an array of strings (can be lower or uppercase; all characters, no spaces)
# But more implicity some
# the characters in the string
# the position of characters in the string
# the alphabet
# the position of characters in the alphabet


# MENTAL MODEL
# have to have access to the alphabet characters and their respective positions in the alphabet
# have to access the to the characters in each string and identify their position in the string
# check to see if the positions held by the character in the string is the same as the position
# it holds in the alphabet

# output is an array of integers, with each integer representing the total number of times
# the characters in each string occupy the same position as that in the alphabet


# DATA STRUCTURE
# data structure for alphabet; a array where  values are set equal to range [a..z] & [1..26]
# data structure for string - we are given an array of multiple strings
# break up the given array into individual strings and those strings into characters that
# return/have the value of its position

=begin

ALGORITHM




=end



def solve(arr)
counter = 0
alphabet = ("a".."z").to_a
alphabet.each do
  if alphabet == arr.each {|e| e}
  counter += 1
end
end
counter
end

p solve(["joana"])
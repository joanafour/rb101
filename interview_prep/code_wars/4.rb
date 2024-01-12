



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

=begin

def solve(arr) # arr = ["", "", "", ""]

num = 0
a = ("a".."z").to_a
h = a.to_h {|item| [item, num +=1]}
arr2 = []

arr.each do |element|
  arr2 << element.chars
end

# arr2 = [["a", "b", "o", "d", "e"], ["A", "B", "c"], ["x", "y", "z", "D"]]
  #[[],[],[]]

for element in arr2 # accessing the array in the array
  element
 element.each_index do |index| # for each index at each array
   element[index] = element[index].downcase # each element at each index is downcase
    if element[index] == h.key(index + 1) # matching
      element[index].replace("foo")
    end
 end
end

count = 0

arr3 = []
arr2.each {|array| arr3 << array.count("foo")}
arr3


end

p solve(["abode","ABc","xyzD"])
p solve(["abide","ABc","xyz"])
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])
p solve(["encode","abc","xyzD","ABmD"])
=end
 
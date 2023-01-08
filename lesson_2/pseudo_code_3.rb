=begin 


# takes an array of integers and returns a new array with every other element from the original array
starting with the first element 

informal --

given an array of integers 

create an empty arrray 
iterate through the array by indices
append value assigned to even number indices to empty array (how?)

return the new array 

 



=end 


array = [2, 3, 4, 5, 6, 5, 6, 6, 7]
a = []
array.each_index do |index| 
  if index.even? 
    a << array[index]
  end 
end 

p a 


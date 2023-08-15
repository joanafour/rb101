#1 numbers = [1, 2, 2, 3]
numbers.uniq
#non-mutating, returns number elements that are not duplicates [1, 2, 2, 3]
puts numbers
#outputs 1 2 2 3

#3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.sub!("important", "urgents")

#4
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) # deletes the index; numbers calls on the delete method and passes in the array delete_at methods iterates through the array
# they operate on the contents of the referenced array and modify it in place, rather than juist returning a modified version of the array

numbers.delete(1) #deletes the number 1

famous_words = "seven years ago..."
famous_words >> "four score and "
famous_words = "Fours c"
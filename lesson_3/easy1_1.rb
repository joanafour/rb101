#1 numbers = [1, 2, 2, 3]
numbers.uniq
#non-mutating, returns number elements that are not duplicates [1, 2, 2, 3]
puts numbers
#outputs 1 2 2 3
#2
=begin
!= is not equal to, could use in conditionals
!(object) not the object, returns false
! ususally indicates method is mutating (! and ? are actually part of the method name not just the syntax)
? error
!!  is just =?
=end
#3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.sub!("important", "urgents")

#4
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) # deletes the index; arrays object calls on the delete method and passes in the array delete_at methods iterates through the array
# they operate on the contents of the referenced array and modify it in place, rather than just returning a modified version of the array

numbers.delete(1) #deletes the number 1

#5
r = 10..100
r.include?(42)

#6
famous_words = "seven years ago..."
famous_words >> "four score and "
puts "Four score and #{famous_words}."

#7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

#8
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
a = []
flintstones.each_key{|key| a << key}
b []
flintstones.each_value{|value| b << value}


c = flintstones.slice("Barney")
c.to_a
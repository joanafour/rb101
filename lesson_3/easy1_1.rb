#1 numbers = [1, 2, 2, 3]
numbers.uniq
#non-mutating, returns number elements that are not duplicates [1, 2, 2, 3]
puts numbers
#outputs 1 2 2 3
#2
=begin
!= is not equal to, could use in conditionals
!(object) turns an object into the opposite of their boolean equivalent
! ususally indicates method is mutating (! and ? are actually part of the method name not just the synax)
? error
!!(object) turns object into its boolean equivalent
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

#1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.include?("Spot")
# Methods has_key?, key?, and member? are aliases for #include?.

#2
munsters_description = "The Munsters are creepy in a good way."
munsters_description.capitalize!
munsters_description.upcase
munsters_description.downcase
munsters_description.swapcase

Upcases each downcase character and downcases each upcase character; returns self if any changes, nil otherwise.

#3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

#4
advice = "Few things in life are as important as house training your pet dinosaur."
advice =~ /dino/
advice.include?("dino")
advice.match?

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
#5
flintstones = %w(Fred barney wilma betty bambam pebbles)
#6
flintstones.push("DIno")
#7
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!("as house training ")
advice.slice(0, advice.index('house'))
 # [start, length]
# the string slice! mutates the string and returns as house training
# the string slice only returns the sliced out part and does not affect the original string
#8
statement = "The Flintstones Rock!"

statement.count 't'

title = "Flintstone Family Members"
title.center(40)

#1
y = "The Flintstones Rock!"

x = 1
until x > 10
  puts y
  y.prepend " "
  x += 1
end

#2.

puts "the value of 40 + 2 is " + (40 + 2).to_s
# trying to use string concatenation with an integer
# could use string interpolation instead "the value of 40 + 2 is #{40 + 2}."
# could convert integer to string and concat that way

#3.
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

def factors(number)
  divisor = number
  factors = []
  until divisor == 0
    factors << number / divisor if number % == 0
    divisor -= 1
  elsif divisor <- 0
    puts "That is not valid input."
    break
  end
  end
end


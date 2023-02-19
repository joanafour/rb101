answer = 42

def mess_with_it(some_number)
  some_number += 8
end
puts mess_with_it(answer)
p answer

p new_answer = mess_with_it(answer) #new_answer = 50

p answer - 8


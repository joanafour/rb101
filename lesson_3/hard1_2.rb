greetings = { a: 'hi'}
informal_greeting = greetings[:a] # informal_greeting = hash key a which will return hi
# informal greeting points to greetings[:a]
informal_greeting << 'there' # greetings [:a] is mutated but is greetings mutated? 

puts informal_greeting
puts greetings


# complicated way
=begin
advice = "Few things in life are as important as house training your pet dinosaur."
advice = advice.split
advice[6] = "urgent"
puts advice.join(" ")

=end
# easy way
advice.gsub!('important', 'urgent')

require 'date'

puts Date.civil # defaults to -4712-01-01 start of julian period / calendar
puts Date.civil(2016) # <Date: 2016-1-1
puts Date.civil(2016, 5)  # Date: 2016-05-01
puts Date.civil(2016, 5, 13) # Date: 2016-05-13
=begin
civil([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date

Note that the brackets are nested with this method; items inside the outermost bracket pairs can
only be omitted if all of the innermost bracket pairs are omitted as well. Hence, if you omit the month argument,
you must omit mday and start, but you must supply year.
=end
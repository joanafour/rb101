a = %w(a b c d e)
puts a.fetch(7) # index error
puts a.fetch(7, 'beats me') # "beats me "
puts a.fetch(7) {|index| index**2} # returns what's in the block 49
# fetch is called with an index argument, an index and default argument, or an index argument
# and a block  
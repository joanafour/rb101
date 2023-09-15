

def letter_count(a)
 a = a.chars
 hsh = {}
  for char in a do
   hsh[char.to_sym] = a.count(char)
  end
 hsh
end

# a = gets.chomp

a = "theearthissquare"
letter_count(a)
=begin
def short_long_short(string1, string2)
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end
=end

def century(year)
   century = 0
  if year <= 100
    century = 1
  elsif
    year.to_s.end_with?("0")
    century = year/100
  else
    century = (year/100) + 1
  end
  century = century.to_s
  if century.end_with?(4..20) #this is gonna be an issue 
    century + 'th'
  elsif century.end_with?('1')
    century.to_s + 'st'
  elsif century.end_with?('2')
    century + 'nd'
  elsif century.end_with?('3')
    century + '3rd'
  end
end

puts century(2000)

def century(given_year)
given_year = given_year.to_f / 100
given_year = given_year.ceil.to_s
else
  given_year = '19'
end
year = given_year.to_i
if
  year >= 4 && year <= 20
  given_year << "th"
elsif
  given_year.end_with?('2') && !given_year.end_with?('12')
  given_year << "nd"
elsif
  given_year.end_with?('3') && !given_year.end_with?('13')
  given_year << "rd"
elsif
  given_year.end_with?('1') && !given_year.end_with?('11')
  given_year << "st"
else
  given_year << "th"
end
end

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end


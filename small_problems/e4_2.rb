def century(given_year)
if given_year != 1901 || given_year != 1900
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
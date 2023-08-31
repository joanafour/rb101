def leap_year?(year)
# year %  4 == 0  && (year % 100 != 0 || year % 400 == 0)
if year < 1752
  true if year / 4
else
  true if year % 100 == 0 ? year % 400 == 0 : year % 4 == 0
end
end

  leap_year?(2016) == true
  leap_year?(2015) == false
  leap_year?(2100) == false
  leap_year?(2400) == true
  leap_year?(240000) == true
  leap_year?(240001) == false
  leap_year?(2000) == true
  leap_year?(1900) == false
  leap_year?(1752) == true
  leap_year?(1700) == false
  leap_year?(1) == false
  leap_year?(100) == false
  leap_year?(400) == true



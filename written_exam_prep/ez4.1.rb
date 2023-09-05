=begin
def leap_year?(year)
# year %  4 == 0  && (year % 100 != 0 || year % 400 == 0)
if year < 1752
     year % 4 == 0
else
  (year % 400 == 0) ||  (year % 4 == 0 && year % 100 != 0)
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
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true

=end

=begin
def multisum(num)
result = 0
  for i in 1..num
    if i % 3 == 0 || i % 5 == 0
      result += i
    end
  end
  result
end


p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)
=end




def running_total(arr)
  arr.map do |e|
    if e == e[0]
      e
    else
     e += arr[e - 1]
    end
  end
end


p running_total[1,2,3]
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

def short_long_short(string1, string2)
   string2.size > string1.size ? string1 + string2 + string1 : string2 + string1 + string2
end

=begin
def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end
=end 
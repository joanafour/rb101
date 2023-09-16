

def solution(full_text, search_text)
   full_text.gsub!(search_text, "1")
   if full_text.include?("1")
    full_text.count("1")
   else
    0
   end
end



p solution('abbc', 'bb')
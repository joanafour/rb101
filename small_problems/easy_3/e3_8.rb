def palindrome?(string)
   if string.reverse == string
    puts true
   else
    puts false
   end
end


palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

def palindrome(data)
  data == data.reverse
end

a = [1, true, 1, true, 1]
palindrome(a)

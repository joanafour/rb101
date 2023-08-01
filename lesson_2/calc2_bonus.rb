=begin
1. better integer validation
2. better number validation
3. operation to message
4. extracting messages in the program to a config file
5. internationalize the message?
=end


#1

def valid?(num)
  num.to_i != 0 || num == num.to_i.to_s
end

def number?(number)
  num.to_f != 0 || num == num.to_f.to_s
end

# alternative solution

def integer?(input)
  /^-?\d+$/.match(input)
end

=begin
// , inside two forward slashes you can place any characters you would like to match with the string
^ , beginning of a string
-
\d ,
+ , match on or more of the previous
? , match zero or one of the previous 
$ , end of a string
=end



def operation_to_message(op)

loop do
  case op
  when '1'
    'Adding'
    break
  when '2'
    'Subtractng'
    break
  when '3'
    'Multiplying'
    break
  when '4'
    'Dividing'
    break
  else
    'Please enter either 1, 2, 3 or 4'
  end
end
end

def valid_number?(user_number)
   user_number.to_f != 0 || (user_number == user_number.to_i.to_s) || user_number == user_number.to_f.to_s
end

puts "Hello, welcome to the loan calculator!"

loop do

puts "What is your loan amount"
loan_amount = ''
loop do
  loan_amount = gets.chomp
  if valid_number?(loan_amount)
    break
  else
    puts "Oops, that doesn't look like valid input, please re-enter the loan amount!"
  end
end

puts "What is the annual percentage rate or APR?"
apr = ''
loop do
  apr = gets.chomp
  if valid_number?(apr)
    break
  else
    puts "Oops, that doesn't look like valid input, please re-enter the apr!"
  end
end



puts "What is the loan duration in months"
loan_duration = ''
loop do
  loan_duration = gets.chomp
  if valid_number?(loan_duration)
    break
  else
    puts "Oops, that doesn't loops "
  end
end

# calculations


monthly_interest_r = (apr.to_f/ 12) / 100
loan_duration = loan_duration.to_f
monthly_payment = loan_amount.to_f * (monthly_interest_r.to_f / (1 - (1 + monthly_interest_r.to_f)**(-loan_duration.to_f)))

puts "your monthly payment is #{monthly_payment.ceil(2)}. capitalism is the worst."


  puts "do you want to do another calculation?"
  ans = gets.upcase!.chomp

  break unless ans.start_with?('Y')


end

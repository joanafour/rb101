# methods
def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

prompt("Hello, welcome to the loan calculator. Please enter your name: ")
name = ''

loop do
  name = gets().chomp()
  if name.empty?
    prompt("Please enter your name: ")
  else
    break
  end
end

prompt("Hello #{name}, lets get started!")

loop do # outside loop
  loan_amount = ''
  loop do
    prompt("Please enter how much the loan is for: ")
    loan_amount = gets().chomp()

    if valid_number?(loan_amount)
      break
    else
      prompt("Hmm... That doesn't look like a valid number.")
    end
  end

  apr = ''
  loop do
    prompt("Please enter your APR: ")
    apr = gets().chomp()

    if valid_number?(apr)
      break
    else
      prompt("Hmm.. That doesn't look like a valid number.")
    end
  end

  loan_yrs = ''
  loop do
    prompt("Please enter many years are you taking the loan for: ")
    loan_yrs = gets().chomp()

    if valid_number?(loan_yrs)
      break
    else
      prompt("Hmm.. That doesn't look like a valid number.")
    end
  end

  loan_mths = ''
  loop do
    prompt("And please enter how many months: ")
    loan_mths = gets().chomp()

    if valid_number?(loan_yrs)
      break
    else
      prompt("Hmm.. That doesn't look like a valid number.")
    end
  end

  # calculation
  mthly_ir = (apr.to_f / 100) / 12
  loan_duration = (loan_yrs.to_f * 12) + loan_mths.to_f
  mthly_payment = loan_amount.to_f * (mthly_ir.to_f / (1 - (1 + mthly_ir.to_f)**(-loan_duration.to_f)))

  prompt("Your monthly payment is #{mthly_payment.round(2)}.")
  prompt("Do you want to calculate another monthly payment? (Y to calculate again)")
  answer = gets().chomp()
  break unless answer.downcase.start_with?('y')
end


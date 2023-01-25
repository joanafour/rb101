VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts("=> #{message}")
end

def display_result(player, cc)
if (player == 'rock' && cc == 'scissors') ||
  (player == 'paper' && cc == 'rock') ||
  (player == 'scissors' && cc == 'paper')
prompt("You won!")
elsif (player == 'scissors' && cc == 'rock') ||
    (player == 'rock' && cc == 'paper') ||
    (player == 'paper' && cc == 'scissors')
    prompt("Computer won!")
else
  prompt("It's a tie!")
end
end

loop do
choice = '' # choice needs to be outside the loop so that it is in scope
loop do
  prompt("Choowse one: #{VALID_CHOICES.join(', ')}")
  choice = gets().chomp()

  if VALID_CHOICES.include?(choice)
    break
  else
    prompt("That's not a valid choice.")
  end
end

# think about capturing these values in an array and then sampling out of that array
computer_choice = VALID_CHOICES.sample

prompt("You chose: #{choice}; Computer chose: #{computer_choice}.")

display_result(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing, goodby.")
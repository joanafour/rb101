VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(player, computer)
  if (choice == 'rock' && computer_choice == 'scissors') ||
    (choice == 'paper' && computer_choice == 'rock') ||
    (choice == 'scissors' && computer_choice == 'paper')
  prompt("You won!")
elsif (choice == 'rock' && computer_choice == 'paper') ||
      (choice == 'paper' && computer_choice == 'scissors') ||
      (choice == 'scissors' && computer_choice == 'rock')
  prompt("Computer won!")
  
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(',')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)          # do we always want to write code
      break
    else
    prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample
  Kernel.puts("You chose : #{choice}. Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)


  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thank yoy for playing. Goodbye.")
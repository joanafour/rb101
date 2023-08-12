
def prompt(a_string)
  puts ("=> #{a_string}")
end
game_players = %w(rock paper scissors spock lizard)

def win?(first, second)
  if (first == "scissors" &&  second == "paper" || second == "lizard") ||
      (first == "paper" && second == "rock" || second == "spock") ||
      (first == "rock" && second == "scissors" || second = "lizard") ||
      (first == "spock" && second == "rock" || second == "scissors") ||
      (first == "lizard" && second == "paper" || second == "spock")
  end
end





prompt("Welcome! Please choose from one of the following #{game_players}.")
user_input = gets.chomp


computer_output = game_players.sample
prompt("Computer chooses #{computer_output}")

if
  win?(user_input, computer_output)
  puts "You win!"
elsif
  win?(computer_output, user_input)
  puts "Computer wins!"
else
  puts "It's a tie!"
end


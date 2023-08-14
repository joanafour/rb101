
def prompt(a_string)
  puts ("=> #{a_string}")
end
game_players = %w(rock paper scissors spock lizard)

def win?(first, second)
  if (first == "scissors" &&  (second == "paper" || second == "lizard")) ||
      (first == "paper" && (second == "rock" || second == "spock")) ||
      (first == "rock" && (second == "scissors" || second == "lizard")) ||
      (first == "spock" && (second == "rock" || second == "scissors")) ||
      (first == "lizard" && (second == "paper" || second == "spock"))
  end
end


def valid?(choice)
  if choice.start_with?('sc')
    choice.replace("scissors")
  elsif choice.start_with?('p')
    choice.replace("paper")
  elsif choice.start_with?('r')
    choice.replace('rock')
  elsif choice.start_with?('sp')
    choice.replace('spock')
  elsif choice.start_with?('l')
    choice.replace('lizard')
  end
end



prompt("Welcome! Please choose from one of the following #{game_players}.")
user_input = ''
loop do
user_input = gets.chomp
  if valid?(user_input)
    puts user_input
    break
  else
    puts "That doesn't look like a valid choice, please re-enter your answer."
end
end


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
  puts computer_output
  puts user_input
end


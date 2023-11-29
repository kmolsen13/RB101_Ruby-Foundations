options = { '1': 'rock', '2': 'paper', '3': 'scissors', '4': 'spock', '5': 'lizard' }
possibilities = %w[1 2 3 4 5]
player_score = 0
computer_score = 0

def logic(player, computer)
  if (player == 'rock' && (computer == 'paper' || computer == 'spock')) ||
    (player == 'paper' && (computer == 'scissors' || computer == 'lizard')) ||
    (player == 'scissors' && (computer == 'rock' || computer == 'spock')) ||
    (player == 'spock' && (computer == 'paper' || computer == 'lizard')) ||
    (player == 'lizard' && (computer == 'rock' || computer == 'scissors'))
    'computer'
  elsif (player == 'rock' && (computer == 'scissors' || computer == 'lizard')) ||
    (player == 'paper' && (computer == 'rock' || computer == 'spock')) ||
    (player == 'scissors' && (computer == 'paper' || computer == 'lizard')) ||
    (player == 'spock' && (computer == 'rock' || computer == 'scissors')) ||
    (player == 'lizard' && (computer == 'spock' || computer == 'paper'))
    'player'
  else
    puts 'You draw this round!'
    'draw'
  end
end

puts 'Welcome to rock, paper, scissors, spock, lizard!'

loop do
  puts 'Make a choice between 1) rock, 2) paper, 3) scissors, 4) spock, and 5) lizard'
  user_choice = gets.chomp

  loop do
    break if possibilities.include?(user_choice)

    puts 'Please enter a valid choice: 1, 2, 3, 4, or 5.'
    user_choice = gets.chomp
  end

  computer_choice = possibilities.sample

  user_selection = options[user_choice.to_sym]
  computer_selection = options[computer_choice.to_sym]

  puts "You selected #{user_selection} and the computer selected #{computer_selection}."

  winner = logic(user_selection, computer_selection)
  
  if winner == 'computer'
    computer_score += 1
    puts "You lose this round! Your score is #{player_score} and the computer\'s score is #{computer_score}."
  elsif winner == 'player'
    player_score += 1
    puts "You win this round! Your score is #{player_score} and the computer\'s score is #{computer_score}." 
  elsif winner == 'draw'
    puts "You draw this round. Your score is #{player_score} and the computer\'s score is #{computer_score}."
  end

  if player_score == 3
    puts "You win the game!"
    break
  elsif computer_score == 3
    puts "You lose the game!"
    break
  end
end

puts 'Thank you for playing!'

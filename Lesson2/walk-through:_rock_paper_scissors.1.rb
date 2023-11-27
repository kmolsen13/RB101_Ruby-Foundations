options = { '1': 'rock', '2': 'paper', '3': 'scissors' }
possibilities = %w[1 2 3]
play_arr = %w[y n]

puts 'Welcome to rock, paper, scissors!'

loop do
  puts 'Make a choice between 1) rock, 2) paper, and 3) scissors'
  user_choice = gets.chomp

  loop do
    break if possibilities.include?(user_choice)

    puts 'Please enter a valid selection: 1, 2, or 3.'
    user_choice = gets.chomp
  end

  computer_choice = possibilities.sample

  user_selection = options[user_choice.to_sym]
  computer_selection = options[computer_choice.to_sym]

  puts "You selected #{user_selection} and the computer selected #{computer_selection}."

  if user_selection == 'rock' && computer_selection == 'paper'
    puts 'You lose!'
  elsif user_selection == 'rock' && computer_selection == 'scissors'
    puts 'You win!'
  elsif user_selection == 'rock' && computer_selection == 'rock'
    puts 'You draw!'
  end

  if user_selection == 'paper' && computer_selection == 'paper'
    puts 'You draw!'
  elsif user_selection == 'paper' && computer_selection == 'scissors'
    puts 'You lose!'
  elsif user_selection == 'paper' && computer_selection == 'rock'
    puts 'You win!'
  end

  if user_selection == 'scissors' && computer_selection == 'paper'
    puts 'You win!'
  elsif user_selection == 'scissors' && computer_selection == 'scissors'
    puts 'You draw!'
  elsif user_selection == 'scissors' && computer_selection == 'rock'
    puts 'You lose!'
  end

  play_again = ''
  loop do
    puts 'Do you wish to play again? (y/n)'
    play_again = gets.chomp.downcase

    break if play_arr.include?(play_again)

    puts 'Invalid selection. Please input "y" or "n".'
  end

  break if play_again == 'n'
end

puts 'Thank you for playing!'

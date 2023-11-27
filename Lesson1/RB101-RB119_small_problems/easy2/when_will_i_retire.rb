puts "What is your age?"
cur_age = gets.chomp.to_i

puts "At what age would you like to retire?"
ret_age = gets.chomp.to_i

cur_year = Time.now.year
ret_year = ret_age - cur_age + cur_year


puts "It's #{cur_year}. You will retire in #{ret_year}. " + \
    "You only have #{ret_year - cur_year} years of work to go!"
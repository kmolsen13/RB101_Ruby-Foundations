puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
perc = gets.chomp.to_f

tip = (bill * perc / 100).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{'%.2f' % tip}"
puts "The total is $#{'%.2f' % total}"
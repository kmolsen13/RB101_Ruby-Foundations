puts "Please write a word or multiple words:"
string = gets.chomp
len = string.length - string.count(" ")
puts "There are #{len} characters in '#{string}'." 
puts "What is your name?"
user_response = gets.chomp

if user_response.include?("!")
    puts "HELLO #{user_response.upcase}. " + \
        "WHY ARE WE SCREAMING?"
else
    puts "Hello #{user_response}."
end
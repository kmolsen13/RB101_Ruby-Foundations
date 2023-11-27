puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product:"
user_input = gets.chomp.downcase

num = 1

if user_input == "s"
    result = 0
    while num <= number
        result += num
        num += 1
    end
    
    puts "The sum of the integers between 1 and #{number} is #{result}."
elsif user_input == "p" 
    result = 1
    while num <= number
        result *= num
        num += 1
    end

    puts "The product of the integers between 1 and #{number} is #{result}."
else
    puts "Oops. Unknown operation."
end


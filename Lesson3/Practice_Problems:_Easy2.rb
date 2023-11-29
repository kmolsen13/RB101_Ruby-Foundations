# Question 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.include?("Spot")
p ages.has_key?("Spot")
p ages.member?("Spot")


# Question 2
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.swapcase
p munsters_description.capitalize
p munsters_description.downcase
p munsters_description.upcase


# Question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)
p ages


# Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.include?("dino")


# Question 5
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones.sort!
p flintstones


# Question 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
p flintstones


# Question 7
flintstones1 = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones1.append("Dino", "Hoppy")
p flintstones1

# Question 8
advice1 = "Few things in life are as important as house training your pet dinosaur."
puts advice1.slice!("Few things in life are as important as")
puts advice1

=begin
Bonus: when using slice (without the !) the required string is returned but
the original string is unchanged
=end

# Question 9
statement = "The Flintstones Rock!"
p statement.count "t"

# Question 10
title = "Flintstone Family Members"
puts title.center(40)

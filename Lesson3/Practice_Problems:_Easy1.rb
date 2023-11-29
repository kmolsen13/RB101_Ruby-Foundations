# Question 1
numbers = [1, 2, 2, 3]
numbers.uniq

p numbers

# Guess: Will print [1, 2, 3]
# Caveat: Does uniq mutate the object? 


# Question 2
=begin
! is a character that, when added to the end of a method that doesn't mutate 
an object, makes the method mutate the object. ? is an evaluation character. If
you place it at the end of a method it evaluates whether a character is odd, for
example.
1) != is the not equal to character
2) The not character. Makes the object the opposite 
3) ! after something, like a method, makes the method mutate the object
4) Ternary operator
5) ? after something evaluates. i.e. if odd? the method evaluates whether a
   number is odd.
6) Not not character. Returns the boolean equivalent of the original value
=end

# Question 3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!("important", "urgent")
puts advice


# Question 4
numbers = [1, 2, 3, 4, 5]
first = numbers.delete_at(1) # <= deletes the number at index 1 (2)
second = numbers.delete(1)   # <= deletes the number indicated (1)

p first
p second

# Question 5
# p 42.between?(10, 100)
p (10..100).cover?(42)

#Question 6
famous_words = "seven years ago..."
puts new_famous_words = "Four score and " + famous_words
puts famous_words.prepend("Four score and ")

# Question 7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!
p flintstones

# Question 8
flintstones1 = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones1.assoc("Barney")
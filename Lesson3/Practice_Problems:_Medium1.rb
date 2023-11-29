# Question 1
string = "The Flintstones Rock!"

10.times { |num| puts string.rjust(num + string.length) }


# Question 2
#puts "the value of 40 + 2 is " + (40 + 2)  <= can't concat a string and integer together

puts "the value of 40 + 2 is #{(40 + 2)}"
puts "the value of 40 + 2 is " + (40 + 2).to_s


# Question 3
# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

def factors(number)
  divisor = number
  factors = []
  if number <= 0 
    return "Please enter a positive, non-zero number"
  else
    until divisor == 0 do 
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end
    factors
  end
end

p factors(10)

#Bonus 1 => this line determines whether a number is fully divisible by the divisor
#Bonus 2 => this line forces the method to return the factors array


# Question 4
=begin
Yes, there is a difference. << mutates the array while + doesn't. Alyssa gets
around this by assigning the input_array and new element to the buffer array
=end


# Question 5
limit = 15

def fib(first_num, second_num, limit)
  while (first_num + second_num) < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

=begin
The problem was an issue with scope. The limit variable was declared outside
of the method and wasn't passed into the method. The fix was simply to pass the
limit variable into the method. 
=end


# Question 6
#The output is 34


# Question 7
# Yes


# Question 8
# paper


# Question 9
# Output = "Yes"
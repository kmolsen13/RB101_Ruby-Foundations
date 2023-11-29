# Question 1
# The object ID will be the same for c and a. B will have a different ID.

# Question 2
# All three puts will print the same object ID

# Question 3
# String 1 will be pumpkins and string 2 will be pumpkinsrutabaga because << mutates


# Question 4
#my_string will be pumpkinsrutabaga, but my_array will just be pumpkins because << mutates


# Question 5
# my_string = pumpkins and my_array = [pumpkins, rutabaga]


# Question 6
def color_valid(color)
  color == "blue" || color == "green" ? true : false
end

p color_valid("red")
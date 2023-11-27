array = []

puts "=> Enter the 1st number:"
array << gets.chomp.to_i

puts "=> Enter the 2nd number:"
array << gets.chomp.to_i

puts "=> Enter the 3rd number:"
array << gets.chomp.to_i

puts "=> Enter the 4th number:"
array << gets.chomp.to_i

puts "=> Enter the 5th number:"
array << gets.chomp.to_i

puts "=> Enter the last number:"
num6 = gets.chomp.to_i

# array[0] = num1
# array[1] = num2
# array[2] = num3
# array[3] = num4
# array[4] = num5

array.include?(num6) ? puts("The number #{num6} appears in #{array}.") : puts("The number #{num6} does not appear in #{array}.")


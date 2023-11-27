SQMETERS_TO_SQFEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_m = length * width
area_ft = area_m * SQMETERS_TO_SQFEET
round_area = area_ft.round(2)

puts "The area of the room is #{area_m} " + \
    "square meters (#{round_area} square feet)."
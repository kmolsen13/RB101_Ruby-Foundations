# def is_odd?(integer)
#     if integer < 0 
#         integer *= -1
#     elsif integer == 0
#         return false
#     end
    
#     if integer % 2 == 0
#         return false
#     else
#         return true
#     end
# end

# def is_odd?(number)
#     number % 2 == 1
# end

def is_odd?(number)
    (number.remainder(2)).abs == 1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)
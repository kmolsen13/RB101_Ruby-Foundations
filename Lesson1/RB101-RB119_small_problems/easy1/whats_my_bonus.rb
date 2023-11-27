# def calculate_bonus(salary, eligible)
#     if eligible == true
#         return salary / 2
#     else
#         return 0 
#     end
# end

def calculate_bonus(salary, eligible)
    eligible ? (salary/2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
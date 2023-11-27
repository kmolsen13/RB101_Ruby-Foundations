# def xor?(condition1, condition2)
#     return true if condition1 & !condition2
#     return true if condition2 & !condition1
#     false
# end

def xor?(input1, input2)
    return true if input1 && !input2
    return true if input2 && !input1
    false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
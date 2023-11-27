# def xor?(input1, input2)
#     if input1 and input2 == false
#         true
#     elsif input1 == false and input2
#         true
#     else
#         false
#     end
# end

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
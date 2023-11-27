# def reversed_number(number)
#     string = ""
#     arr = number.digits
#     len = arr.length
#     len.times do |index|
#       string << arr[index].to_s 
#     end    
#     num = string.to_i
#     p num
# end

def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
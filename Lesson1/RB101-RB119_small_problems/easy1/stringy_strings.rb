# def stringy(integer)
#     string = ""

#     if integer % 2 == 1
#         plus_one = integer + 1
        
#         (plus_one / 2).times do
#             string << "10"
#         end

#         string.chop!
    
#     else
#         (integer / 2).times do
#           string << "10" 
#         end
#     end
    
#     return string
# end

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


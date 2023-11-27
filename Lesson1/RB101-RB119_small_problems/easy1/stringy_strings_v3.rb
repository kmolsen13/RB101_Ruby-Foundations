def stringy(integer, switch = 1)
    string = []
    if switch == 1
        integer.times do |index|
            (index + 1).odd? ? (string << "1") : (string << "0")
        end
        return string.join
    else
        integer.times do |index|
            (index + 1).odd? ? (string << "0") : (string << "1")
        end
        return string.join
    end
end


# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

puts stringy(6, 0)
puts stringy(9, 0)
puts stringy(4, 0)
puts stringy(7, 0)
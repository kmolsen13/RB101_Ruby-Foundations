def stringy(input)
    string = ""
    input.times do |index|
        string << "1" if (index + 1).odd?
        string << "0" if (index + 1).even?
    end
    return string
end

p stringy(6)

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
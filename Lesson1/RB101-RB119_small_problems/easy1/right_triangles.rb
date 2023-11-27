def triangle(size)
    size.times do |index|
        puts " " * (size - (index + 1)) + "*" * (index + 1) 
    end
end

triangle(9)
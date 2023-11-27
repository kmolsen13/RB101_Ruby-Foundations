# validating an integer
def integer?(input)
  input.to_i.to_s == input
end

p integer?('3')

# validating a float
def float?(input)
  input.to_f.to_s == input
end

p float?('3.3')

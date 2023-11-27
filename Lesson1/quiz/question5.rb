# def word_lengths(string)
#     number_array = []
#     string_array = string.split(" ")
#     string_array.each do |word|
#       number_array << word.length 
#     end
#     number_array
# end


# p word_lengths()

def string_lengths(sentence)
  strings = sentence.split

  strings.map { |chars| chars.length }
end

p string_lengths('To be or not to be')
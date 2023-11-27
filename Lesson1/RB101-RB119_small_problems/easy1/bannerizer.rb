# def print_in_box(string)
    
#     length = string.length
#     dashes = "--"
#     spaces = "  "
    
#     (length + 2).times do
#         dashes << "-"
#     end
    
#     length.times do
#         spaces << " "
#     end
    
#     puts "+#{dashes}+"
#     puts "| #{spaces} |"
#     puts "|  #{string}  |"
#     puts "| #{spaces} |"
#     puts "+#{dashes}+"
    
# end


def print_in_box(message)
   horizontal_rule = "+#{'-' * (message.size + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts horizontal_rule
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts horizontal_rule
end



print_in_box("And she's buying a stairway to heaven.")
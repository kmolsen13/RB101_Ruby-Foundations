# def center_of(string)
#     len = string.length
#     arr = string.split("")
    
#     if len.odd?
#         center = len / 2 + 1
#         puts arr[center - 1]
#     else
#         center1 = len / 2
#         center2 = len / 2 + 1
#         puts arr[center1 - 1] + arr[center2 - 1]
#     end
# end    


def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end


center_of("X")
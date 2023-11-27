def calculator
  puts 'Input number 1'
  num1 = gets.chomp

  puts 'Input number 2'
  num2 = gets.chomp

  puts "Choose the operation: 'add', 'subtract', 'multiply', or 'divide'"
  operation = gets.chomp

  case operation
  when 'add'
    answer = num1.to_i + num2.to_i
  when 'subtract'
    answer = num1.to_i - num2.to_i
  when 'multiply'
    answer = num1.to_i * num2.to_i
  when 'divide'
    answer = num1.to_f / num2.to_f
  else
    puts 'Incorrect operation. Please try again.'
  end
  answer
end

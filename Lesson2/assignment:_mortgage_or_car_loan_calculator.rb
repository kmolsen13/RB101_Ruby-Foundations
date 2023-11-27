def positive_amount?(loan_amount)
  loan_amount.positive?
end

def valid_apr?(annual_interest)
  annual_interest.to_s.to_f == annual_interest
end

def pos_apr?(annual_interest)
  annual_interest.positive?
end

def less_than_100?(annual_interest)
  annual_interest <= 100
end

def valid_duration?(years_duration)
  years_duration.positive?
end

puts '>> Welcome to the mortgage / car loan calculator!'

loop do
  annual_interest = nil
  years_duration = nil
  loan_amount = nil

  loop do
    puts '>> Input a loan amount:'
    loan_amount = gets.chomp.to_f

    unless positive_amount?(loan_amount)
      return puts 'Oops.. that\'s not a valid loan amount. Please enter a positive loan amount.'
    end

    break
  end

  loop do
    puts '>> Input an annual Percentage Rate (APR):'
    puts '(Example, enter 5 for 5%)'
    annual_interest = gets.chomp.to_f

    if !valid_apr?(annual_interest) && !pos_apr?(annual_interest) && !less_than_100?(annual_interest)
      return 'Oops.. that\'s not a valid APR. Please try again.'
    end

    break
  end

  format_annual_interest = (annual_interest / 100)

  loop do
    puts '>> Input a loan duration in years:'
    years_duration = gets.chomp.to_f

    unless valid_duration?(years_duration)
      return 'Oops.. that\'s not a valid loan duration. Please enter a positive loan duration.'
    end

    break
  end

  monthly_interest = format_annual_interest / 12
  monthly_percent = format_annual_interest / 12 * 100
  formatted_interest = format('%.2f', monthly_percent)
  puts "The monthly interest rate is #{formatted_interest}%"

  months_duration = years_duration * 12
  formatted_duration = format('%.0f', months_duration)
  puts "The duration of the loan in months is #{formatted_duration} months"

  monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**-months_duration))
  formatted_payment = format('%.2f', monthly_payment)
  puts "The monthly payment of the loan is $#{formatted_payment}"

  puts 'Do you wish to perform another calculation? (y/n)'
  again = gets.chomp.downcase

  break if again == 'n'
end

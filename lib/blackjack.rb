

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card(card = rand(1..11))
  return card
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
    input = gets.chomp
    return input
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  
  total = 0
  2.times do
  total = deal_card + total
end
  display_card_total(total)
  return total
end

def hit?(total)
  # code hit? here
  
  prompt_user
  input = get_user_input
  if input == "s" 
    return total
  elsif input == "h"
    total += deal_card
    return total
  else
    invalid_command
    prompt_user
end
end

def invalid_command
  # code invalid_command here
  
  puts  "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)
end
end_game(total)
end
    
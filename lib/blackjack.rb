require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  deal_card
  deal_card
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "s"
    total
  elsif input == "h"
    total += deal_card
  else 
    invalid_command
    hit?(total)
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner(card_total)
  
  welcome 
  initial_round
  until total > 21 do 
    hit?
  end
  end_game
end
    

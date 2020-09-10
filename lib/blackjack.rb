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

def runner
  
  welcome 
  initial_round
  until total > 21 do 
   card_total = hit?(total) 
   card_total
   display_card_total
  end
  end_game(card_total)
end
    
def runner
  welcome #introduce the game
  sleep 0.75
  card_total = initial_round #determine your current total & tell user what number they currently have
  until card_total > 21 #continue game until user loses
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total) #prints out once user has lost
end

runner 
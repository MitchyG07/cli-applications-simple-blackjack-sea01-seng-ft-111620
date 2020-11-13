require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  deal_card = (rand(1..11))
  deal_card 
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp.to_s
  user_input 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  round = []
  counter = 0 
  card_total = 0 
  while counter <= 1 do
    round << deal_card
    card_total += round[counter]
    counter += 1 
  end 
  display_card_total(card_total)
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end 

def hit?(initial_round)
  card_total = initial_round
  prompt_user 
  user_input = get_user_input
  if user_input === 'h'
    card_total += deal_card
    card_total 
  elsif user_input === 's'
    card_total = 0
  else 
    invalid_command
    prompt_user
    get_user_input
  end 
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  card_total = 0 
  card_total = initial_round
  until card_total > 21 do 
    if get_user_input === 'h'
      card_total += hit?(card_total)
    else 
      card_total
    end 
  end 
end_game(card_total)
end


def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(cards)
  # code #display_card_total here
  puts "Your cards add up to #{cards}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = deal_card
  card_total += deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  hitorno = get_user_input
  if hitorno == 'h'
    card_total += deal_card
  end
  card_total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cardz = initial_round
  until cardz > 21 do
    cardz = hit?(cardz)
    display_card_total(cardz)
  end
  end_game(cardz)
end

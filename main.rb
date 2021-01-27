require "readline"
require_relative './src/game'

count = 1;
game = Game21.new
game.deal_cards
game.show_deck
while buf = Readline.readline("> ", true)
  p buf
  game.seen_card_on(buf.to_i - 1)
  if count >= 3
    p game.magical_card
  else
    game.deal_cards
    game.show_deck
  end
  count += 1
end

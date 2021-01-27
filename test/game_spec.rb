require_relative "../src/game"

RSpec.describe Game21 do
  it "should give seen card" do
    game = Game21.new
    game.deal_cards
    game.seen_card_on(1)
    game.deal_cards
    game.seen_card_on(2)
    game.deal_cards
    game.seen_card_on(1)

    p game.magical_card
  end
end

require_relative "../src/deck"
require_relative "../src/card"

RSpec.describe Deck do
  it "should add first card to first lane" do
    deck = Deck.new
    lane_number = deck.add(Card.new(1, "diamond"))
    expect(lane_number).to eq(0)

    lane_number = deck.add(Card.new(2, "diamond"))
    expect(lane_number).to eq(1)
  end

  
end

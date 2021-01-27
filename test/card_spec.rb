require_relative '../src/card'

RSpec.describe Card do
  it "should give its value" do
    card = Card.new(2, "heart")
    expect(card.value).to eq(2)
  end

  it "should give its suit" do
    card = Card.new(3, "heart")
    expect(card.suit).to eq("heart")

  end
end

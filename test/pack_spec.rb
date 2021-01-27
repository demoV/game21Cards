require_relative "../src/card"
require_relative "../src/pack"

RSpec.describe Pack do
  it "sould give number of cards it has" do
    pack = Pack.new([Card.new(1, "heart"), Card.new(2, "heart")])
    expect(pack.length).to eq(2)
  end
  describe '#draw' do
    it "should give the top card" do
      one_of_heart = Card.new(1, "heart")
      two_of_heart = Card.new(2, "heart")
      pack = Pack.new([one_of_heart, two_of_heart])

      expect(pack.draw).to eq(one_of_heart)
      expect(pack.length).to eq(1)
      expect(pack.draw).to eq(two_of_heart)
    end
  end


  it "should be able to cancat other pack" do
    one_of_heart = Card.new(1, "heart")
    two_of_heart = Card.new(2, "heart")
    first_pack = Pack.new([one_of_heart, two_of_heart])
    second_pack = Pack.new([Card.new(4, "heart")])

    new_pack = first_pack.add_pack(second_pack)
    expect(new_pack.length).to eq(3)
  end

  it "should give card from nth position" do
    one_of_heart = Card.new(1, "heart")
    two_of_heart = Card.new(2, "heart")
    first_pack = Pack.new([one_of_heart, two_of_heart])

    card = first_pack.draw_at(1)
    expect(card).to eq(two_of_heart)
  end

  it "should get given number of cards" do
    one_of_heart = Card.new(1, "heart")
    two_of_heart = Card.new(2, "heart")
    first_pack = Pack.new([one_of_heart, two_of_heart])

    new_pack = first_pack.get(1)
    expect(new_pack.length).to eq(1)
  end
end

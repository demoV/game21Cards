class Pack
  def initialize(cards)
    @cards = cards
  end

  def length
    @cards.length
  end

  def draw
    @cards.shift
  end

  def self.empty
    new(Array.new)
  end

  def add(card)
    @cards.unshift(card)
    nil
  end

  def add_pack(other)
    cards = @cards.concat(other.instance_variable_get(:@cards))
    Pack.new(cards)
  end

  def draw_at(index)
    @cards.delete_at(index)
  end

  def get(number)
    Pack.new(@cards[0..number - 1])
  end

  def empty?
    @cards.length == 0
  end

  def shuffle
    Pack.new(@cards.shuffle)
  end

  def to_st
    @cards.map { |card| card.to_st }
  end
end

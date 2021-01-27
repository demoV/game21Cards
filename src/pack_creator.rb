require_relative './card'
require_relative './pack'
def a_pack
    suits = ['diamond', 'heart', 'club', 'spade']
    cards = suits.map {|suit|
      Array.new(13).each_with_index.map { |e, i| Card.new(i + 1, suit)}
    }.flatten
    Pack.new(cards)
end

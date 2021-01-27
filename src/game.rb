
require_relative './pack_creator'
require_relative './deck'
class Game21
    def initialize
      @pack = a_pack.shuffle.get(21)
      @deck = Deck.new
      @turn = 0
    end

    def deal_cards
      if @pack.empty?
        return nil
      end
      @deck.add(@pack.draw)
      deal_cards
    end

    def show_deck
      pic = @deck.picture
      pic.each_with_index.each { |lane, index| p "card at #{index + 1} position, are =>>  #{lane.to_st.join('  |  ')}"  }
    end
    
    def seen_card_on(lane_number)
      @pack = @deck.collect(lane_number)
    end

    def magical_card
      @pack.draw_at((@pack.length / 2))
    end
end

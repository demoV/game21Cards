require_relative "./pack"

class Deck
    def initialize
      @current_lane = 0
      initialize_empty_lanes
    end

    def add(card)
      @lanes[@current_lane].add(card)
      @current_lane = (@current_lane + 1) % 3
      @current_lane - 1
    end

    def collect(found_on)
      middle_pack = @lanes.delete_at(found_on)
      new_pack = @lanes.first.add_pack(middle_pack).add_pack(@lanes.last)
      initialize_empty_lanes
      new_pack
    end

    def picture
      @lanes
    end
    private
        def initialize_empty_lanes
          @lanes = Array.new(3).map { |e| Pack.empty }
        end
end

class Card
  def initialize(value, suit)
    @value = value
    @suit = suit
  end
  def value
    @value
  end
  def suit
    @suit
  end
  def to_st
    "#{suit}_#{value}"
  end  
end

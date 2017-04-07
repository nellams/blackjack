class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face_card?
    if @rank == "J" || @rank == "Q" || @rank == "K"
      true
    else
      false
    end
  end

  def ace?
    if @rank == "A"
      true
    else
      false
    end
  end
end

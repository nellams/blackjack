require_relative 'deck'

class Hand

  def initialize(cards)
    @hand = cards
  end

  def calculate_hand
    sum = 0
    @hand.each do |card|
      rank = card.split('')[0]
      if card.split('').length > 2 || rank == "J" || rank == "Q" || rank == "K"
        value = 10
      elsif rank == "A"
        value = 11
        @boo = 1
      else
        value = rank.to_i
      end
      sum += value
    end
    if sum > 21
      if @boo
        sum -= 10
      else
      "fails"
      end
    else sum <= 21
      sum
    end
  end
end

# deck = Deck.new
# cards = deck.deal(2)
# hand = Hand.new(cards)

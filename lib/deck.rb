class Deck

  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

  attr_accessor :cards

  def initialize
    @cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
    @cards.shuffle!
  end
  def deal(num_cards, num_hands = 1)
    hands = []
      num_hands.times do
        hands << Hand.new([@cards.pop])
      end
      (num_cards - 1).times do
        hands.each do |hand|
          hand.hand_cards << @cards.pop
        end
      end
      hands
    end
end

require_relative 'deck'

class Hand

  attr_reader :hand_cards

  def initialize(hand_cards = [])
    @hand_cards = hand_cards
  end

  def calculate_hand
    sum_without_ace = 0
    aces = []
    @hand_cards.each do |card|
      if card.face_card?
        value = 10
      elsif card.ace?
        aces << card
        value = 0
      else !card.ace?
        value = card.rank.to_i
      end
      sum_without_ace += value
    end
    sum = sum_without_ace
      aces.each do |card|
        if sum <= 10
          value = 11
        else sum > 10
          value = 1
        end
        sum += value
      end
    if sum > 21
      "fails"
    else
      sum
    end
  end
end

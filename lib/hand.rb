require_relative 'deck'

class Hand

  attr_reader :hand_cards

  def initialize(hand_cards = [])
    @hand_cards = hand_cards
  end

  def calculate_hand
    sum_without_ace = 0
    @hand_cards.each do |card|
      if card.face_card?
        value = 10
      elsif card.ace?
        value = 0
      else !card.ace?
        value = card.rank.to_i
      end
      sum_without_ace += value
    end
    sum = sum_without_ace
      @hand_cards.each do |card|
        if card.ace? == true
          if sum_without_ace <= 10
            value = 11
          else sum_without_ace > 10
            value = 1
          end
          sum += value
        end
      end
      sum
    end
end

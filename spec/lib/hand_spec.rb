require "spec_helper"


RSpec.describe Hand do

  let(:four_spades) { Card.new("4", "♠") }
  let(:king_hearts) { Card.new("K", "♥") }
  let(:five_diamonds) { Card.new("5", "♦") }
  let(:ace_hearts) { Card.new("A", "♥") }
  let(:nine_clubs) {Card.new("9", "♣")}
  let(:two_clubs) { Card.new("2", "♣") }
  let(:ace_spades) { Card.new("A", "♠") }
  let(:ten_clubs) { Card.new("10", "♣") }


  let(:hand_dealt) {Hand.new([four_spades, king_hearts])}

  let(:hand) { Hand.new( [king_hearts, five_diamonds, ace_hearts] ) }
  let(:hand_2) { Hand.new( [nine_clubs, four_spades] ) }
  let(:hand_3) { Hand.new( [two_clubs, five_diamonds, ace_hearts])}
  let(:hand_4) { Hand.new( [nine_clubs, ace_hearts, ace_spades])}
  let(:hand_5) { Hand.new( [nine_clubs, ace_hearts, ace_spades, four_spades])}
  let(:hand_6) { Hand.new( [ten_clubs, ace_hearts, ace_spades, king_hearts])}


  describe "#new" do
    it "is a collection of Card objects" do
      expect(hand_dealt).to be_a(Hand)
      expect(hand.hand_cards[0]).to be_a(Card)
    end
  end

  describe "#calculate_hand" do
    it "passes" do
      expect(hand.calculate_hand).to eq(16)
      expect(hand_2.calculate_hand).to eq(13)
      expect(hand_dealt.calculate_hand).to eq(14)
      expect(hand_3.calculate_hand).to eq(18)
      expect(hand_4.calculate_hand).to eq(21)
      expect(hand_5.calculate_hand).to eq(15)

    end

    it "fails" do
      expect(hand_6.calculate_hand).to eq("fails")
    end

  end
end

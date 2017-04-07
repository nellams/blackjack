require "spec_helper"

RSpec.describe Card do

  describe "#new" do
    it "takes a rank and a suit as arguments" do
      expect(Card.new("K", "♥")).to be_a(Card)
    end
  end
  let(:ace_diamonds) { Card.new("A", "♦")}
  let(:four_spades) { Card.new("4", "♠") }
  let(:king_hearts) { Card.new("K", "♥") }

  it "has a reader for its rank" do
    expect(king_hearts.rank).to eq("K")
  end
  it "has a reader for its suit" do
    expect(king_hearts.suit).to eq("♥")
  end

  describe "#face_card?" do
    it "returns true if the card is a Jack, Queen, or King, and false for any other card" do
      expect(king_hearts.face_card?).to eq(true)
      expect(four_spades.face_card?).to eq(false)
      expect(ace_diamonds.face_card?).to eq(false)
    end
  end

  describe "#ace?" do
    it "returns true for an ace, and false for any other card" do
      expect(ace_diamonds.ace?).to eq(true)
      expect(four_spades.ace?).to eq(false)
      expect(king_hearts.ace?).to eq(false)
    end
  end
end

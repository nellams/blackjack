require "spec_helper"

RSpec.describe Deck do

  let(:deck) { Deck.new }

  describe "#build_deck" do
    it "builds a deck of 52 card objects" do
      expect(deck.cards.size).to eq 52
      expect(deck.cards).to be_an(Array)
      expect(deck.cards[0]).to be_a(Card)
    end

    it "creates unique cards" do
      expect(deck.cards.uniq.size).to eq 52
    end

    it "shuffles deck aftering being built" do
      expect(deck.cards[0].to_s).to_not include("Card:0x007f8752952488")
      expect(deck.cards[1].to_s).to_not include("Card:0x007fa73babe638")
      expect(deck.cards[2].to_s).to_not include("Card:0x007fa73babe4d0")
    end
  end

  describe "#deal" do
    it "creates a Hand object" do
      expect(deck.deal(2)).to be_an(Array)
      expect(deck.deal(2)[0]).to be_a(Hand)
    end

    it "deals the card from the top of the deck" do
      top_card = deck.cards[-1]
      expect(deck.deal(2)[0].hand_cards[0]).to eq(top_card)

      second_card = deck.cards[-2]
      expect(deck.deal(2)[0].hand_cards[1]).to eq(second_card)

      third_card = deck.cards[-3]
      expect(deck.deal(2,2)[0].hand_cards[1]).to eq(third_card)

    end
  end

end

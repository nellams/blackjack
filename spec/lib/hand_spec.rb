require "spec_helper"

RSpec.describe Hand do

  let(:hand) { Hand.new(["5♦", "A♥"]) }
  let(:hand_2) { Hand.new(["K♥", "10♥"])}
  let(:hand_3) { Hand.new(["A♣", "9♣"])}
  let(:hand_4) { Hand.new(["K♣", "10♣"])}
  let(:hand_5) { Hand.new(["2♣", "3♣"])}

  describe "#calculate_hand" do
    it "passes" do
      expect(hand.calculate_hand).to eq(16)
      expect(hand_3.calculate_hand).to eq(20)
      expect(hand_4.calculate_hand).to eq(20)
      expect(hand_5.calculate_hand).to eq(5)
    end

    it "fails" do
      # expect(hand_2.calculate_hand).to eq("fails")
    end

  end
end

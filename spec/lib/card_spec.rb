require "spec_helper"

RSpec.describe Card do

  describe "#new" do
    it "takes a rank and a suit as arguments" do
      expect(Card.new("K", "♥")).to be_a(Card)
    end
  end

  let(:king_hearts) { Card.new("K", "♥") }

  it "has a reader for its rank" do
    expect(king_hearts.rank).to eq("K")
  end


end

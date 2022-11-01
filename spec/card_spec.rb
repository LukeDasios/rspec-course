class Card
  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end

RSpec.describe Card do
  let(:card) { Card.new("Spades", "Ace") }

  it "has a suit" do
    expect(card.suit).to eq("Spades")
  end

  it "has a rank" do
    expect(card.rank).to eq("Ace")
  end
end

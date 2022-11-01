RSpec.describe "#even?" do
  context "when the number is even" do
    it "returns true" do
      expect(2.even?).to eq(true)
    end
  end

  context "when the number is odd" do
    it "returns false" do
      expect(1.even?).to eq(false)
    end
  end
end
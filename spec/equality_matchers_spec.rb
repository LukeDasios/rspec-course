RSpec.describe "equality matchers" do
  let(:a) { 3 }
  let(:b) { 3.0 }

  describe "eq matcher" do
    it "tests for value and ignores type" do
      expect(a).to eq(b)
    end
  end

  describe "eql matcher" do
    it "tests for value and type" do
      expect(a).not_to eql(b)
    end
  end
end
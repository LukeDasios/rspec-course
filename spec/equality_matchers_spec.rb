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

  describe "equal and be" do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it "cares about object identity" do
      expect(c).to equal(e)
      expect(c).to be(c)

      expect(c).not_to equal(d)
      expect(c).not_to be(d)
    end
  end
end
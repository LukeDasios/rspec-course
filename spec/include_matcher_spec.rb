RSpec.describe "include_matcher" do
  describe "hot chocolate" do
    it "can check for a substring inclusion" do
      expect(subject).to include("hot")
      expect(subject).to include("chocolate")
    end
  end

  describe [1, 2, 3] do
    it "can check for array inclusion" do
      expect(subject).to include(1)
      expect(subject).to include(1, 2)
      expect(subject).to include(1, 2, 3)
    end
  end

  describe ({ a: 10, b: 20 }) do
    it "can check for a key" do
      expect(subject).to include(:a, :b)
      expect(subject).to include(:a)
      expect(subject).to include(:b)
    end

    it "can check for a key value pair" do
      expect(subject).to include(a: 10)
      expect(subject).to include(b: 20)
    end
  end
end
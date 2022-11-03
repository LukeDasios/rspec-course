RSpec.describe "start_with and end_with matchers" do
  describe "caterpillar" do
    it "should check for a substring at the beginning or end" do
      expect(subject).to start_with("cater")
      expect(subject).to end_with("pillar")
    end

    it { is_expected.to start_with("cater") }

    describe [1, 2, 3] do
      it "should check for elements at the beginning or end of an array" do
        expect(subject).to start_with(1, 2)
        expect(subject).to end_with(2, 3)
      end
    end
  end
end
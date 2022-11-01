RSpec.describe "nested_hooks" do
  before do
    puts "before anything happens"
  end

  context "does something" do
    before do
      puts "before any test occurs"
    end

    it "does a thing" do
      expect(1 + 1).to eq(2)
    end
  end
end
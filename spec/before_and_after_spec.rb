RSpec.describe "before and after hooks" do
  before do
    puts "before each test"
  end

  after do
    puts "after each test"
  end

  it "is a random test" do
    expect(2 + 4).to eq(6)
  end

  it "is another random test" do
    expect(2 * 10).to eq(20)
  end
end
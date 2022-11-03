RSpec.describe "comparison matchers" do
  it "allows for comparison with our built-in Ruby operators" do
    expect(10).to be > 1
    expect(10).to be < 100
    expect(10).to be == 10
    expect(10).to be >= 9
    expect(10).to be <= 20
  end
end
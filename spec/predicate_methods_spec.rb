RSpec.describe "predicate methods and predicate matchers" do
  it "can be tested with Ruby methods" do
    expect(10.even?).to eq(true)
    expect(11.odd?).to eq(true)
    expect(0.zero?).to eq(true)
    expect([].empty?).to eq(true)
  end

  it "can be tested with RSpec matchers" do
    expect(10).to be_even
    expect(11).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end
end
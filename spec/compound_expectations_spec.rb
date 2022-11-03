RSpec.describe 25 do
  it "can run multiple tests" do
    # Need to test multiple things in one spec...
    expect(subject).to be_odd
    expect(subject).to be > 20

    # There we go
    expect(subject).to be_odd.and be > 20
  end
end

RSpec.describe "caterpillar" do
  it "passes both tests in one test" do
    expect(subject).to start_with("cat").and end_with("lar")
  end
end

RSpec.describe [:a, :b, :c] do
  it "can check for multiple possibilities" do
    expect(subject.sample).to eq(:a).or eq(:b).or eq(:c)
  end
end

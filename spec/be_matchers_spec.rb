# falsy values --> false, nil
# truthy values --> everything else

RSpec.describe "be matchers" do
  it "can test for truthiness" do
    expect(true).to be_truthy
    expect(0).to be_truthy
    expect(-2).to be_truthy
    expect([]).to be_truthy
    expect([1, 2, 3]).to be_truthy
    expect({}).to be_truthy
    expect(3.5).to be_truthy
    expect("hello").to be_truthy
    expect(:symbol).to be_truthy
  end

  it "can test for falsyness" do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it "can test for nil" do
    expect(nil).to be_nil
    expect([1, 2, 3][3]).to be_nil
    expect({ a: 10 }["b"]).to be_nil
  end
end
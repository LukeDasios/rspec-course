RSpec.describe Hash do
  subject do
    { "x": 10, "y": 20 }
  end

  it "has two key value pairs" do
    expect(subject.length).to eq(2)
  end
end
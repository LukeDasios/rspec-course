RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end

  it "has a length of two" do
    expect(subject.length).to eq(2)
    subject.pop()
    expect(subject.length).to eq(1)
  end

  it "can be called sally or subject" do
    expect(subject).to eq(sally)
  end
end
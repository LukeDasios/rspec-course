RSpec.describe Array do
  it "does something" do
    expect(subject.length).to eq(0)
    subject.push(10)
    expect(subject.length).to eq(1)
  end
end
RSpec.describe "change matcher" do
  subject { [1, 2, 3] }

  it "checks for changes in an object's state" do
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end

  it "accepts negative arguments" do
    expect { subject.pop() }.to change { subject.length }.by(-1)
  end
end
class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new("Boris") }

  it "represents a king" do
    expect(subject.name).to eq("Boris")
  end
end
RSpec.describe "satisfy_matcher" do
  subject { "racecar" }
  # subject { "racecars" }

  it "is a palindrome" do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it "can accept a custom assertion message" do
    expect(subject).to satisfy("be a palindrome") do |value|
      value == value.reverse
    end
  end
end
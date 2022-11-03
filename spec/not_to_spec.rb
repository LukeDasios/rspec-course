RSpec.describe "the not_to method" do
  it "checks for the inverse of a matcher" do
    expect(5).not_to eq(10)
    expect([1, 2, 3]).not_to equal([1, 2, 3])

    expect(10).not_to be_odd

    expect([1, 2, 3]).not_to be_empty

    expect(nil).not_to be_truthy

    expect("hello world").not_to start_with("world")
    expect("hello world").not_to end_with("hello")

    expect(5).not_to respond_to(:length)

    expect([:a, :b, :c]).not_to include(:d)
    expect([1, 2, 3]).not_to include(4)

    expect { 19 + 1 }.not_to raise_error
  end
end
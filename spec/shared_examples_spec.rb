RSpec.shared_examples "A Ruby Object with three elements" do
  it "returns the number of items" do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples "A Ruby Object with three elements"
end

RSpec.describe Hash do
  subject { { a: 10, b: 20, c: 30} }
  include_examples "A Ruby Object with three elements"
end

RSpec.describe String do
  subject { "abc" }
  include_examples "A Ruby Object with three elements"
end

class SausageLink
  attr_reader :length

  def initialize(length = 3)
    @length = length
  end
end

RSpec.describe SausageLink do
  include_examples "A Ruby Object with three elements"
end
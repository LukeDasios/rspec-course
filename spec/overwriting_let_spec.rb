class ProgrammingLanguage
  attr_reader :name

  def initialize(name = "Ruby")
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  context "when a name argument is provided" do
    let(:language) { ProgrammingLanguage.new("Python") }

    it "should equal the name provided" do
      expect(language.name).to eq("Python")
    end
  end

  context "when a name argument is not provided" do
    it "should default to Ruby" do
      expect(subject.name).to eq("Ruby")
    end
  end
end
class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe "have_attributes matcher" do
  describe ProfessionalWrestler.new("Steve Austin", "Punch") do
    it "checks for object attributes and proper values" do
      expect(subject).to have_attributes(name: "Steve Austin", finishing_move: "Punch")
      expect(subject).to have_attributes(name: "Steve Austin")
      expect(subject).to have_attributes(finishing_move: "Punch")
    end
  end
end
class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "Let's go"
  end

  def fall_off_ladder
    "Call my double"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
      actor.act
    end
  end
end

# actor = Actor.new("actor")
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  let(:stuntman) { double("Mr. Danger", ready: true, act: "Let's go", fall_off_ladder: "Ok", light_on_fire: true) }
  subject { Movie.new(stuntman) }

  describe "#start shooting" do
    it "expects an actor to do three actions" do
      expect(stuntman).to receive(:ready?).and_return(true).once
      expect(stuntman).to receive(:light_on_fire).and_return(true).once
      expect(stuntman).to receive(:fall_off_ladder).and_return("Ok").twice
      expect(stuntman).to receive(:act).and_return("Let's go").thrice

      # expect(stuntman).to receive(:ready?).and_return(true).exactly(1).times
      # expect(stuntman).to receive(:act).and_return("Let's go").exactly(2).times
      # expect(stuntman).to receive(:fall_off_ladder).and_return("Ok").exactly(1).times
      # expect(stuntman).to receive(:light_on_fire).and_return(true).exactly(1).times

      # expect(stuntman).to receive(:light_on_fire).and_return(true).at_most(1).times

      # expect(stuntman).to receive(:light_on_fire).and_return(true).at_least(1).times

      subject.start_shooting
    end
  end
end
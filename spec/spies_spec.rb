RSpec.describe "spies" do
  let(:animal) { spy("animal") }

  it "confirms that a message has been received" do
    animal.eat_food
    expect(animal).to have_received(:eat_food)
    expect(animal).not_to have_received(:eat_human)
  end

  it "resets between examples" do
    expect(animal).not_to have_received(:eat_food)
  end

  it "retains the same functionality of a regular double" do
    animal.eat_food
    animal.eat_food
    animal.eat_food
    animal.eat_sushi

    expect(animal).to have_received(:eat_food).thrice
    expect(animal).to have_received(:eat_sushi).once
  end
end
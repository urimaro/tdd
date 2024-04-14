RSpec.describe "Money" do
  it "can be multiplied" do
    five = Dollar.new(5)
    product = five.times(2)
    expect(product).to eq Dollar.new(10)
    product = five.times(3)
    expect(product).to eq Dollar.new(15)
  end

  it "is considered equal to another one with the same amount" do
    expect(Dollar.new(5)).to eq Dollar.new(5)
    expect(Dollar.new(5)).not_to eq Dollar.new(6)
  end
end

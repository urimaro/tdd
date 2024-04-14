RSpec.describe "Money" do
  it "can be multiplied" do
    five = Dollar.new(5)
    expect(five.times(2)).to eq Dollar.new(10)
    expect(five.times(3)).to eq Dollar.new(15)
  end

  it "is considered equal to another one with the same amount" do
    expect(Dollar.new(5)).to eq Dollar.new(5)
    expect(Dollar.new(5)).not_to eq Dollar.new(6)
  end
end

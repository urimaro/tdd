RSpec.describe "Money" do
  it "can be multiplied" do
    five = Money.dollar(5)
    expect(five.times(2)).to eq Dollar.new(10)
    expect(five.times(3)).to eq Dollar.new(15)
  end

  it "is considered equal to another one with the same amount" do
    expect(Dollar.new(5)).to eq Dollar.new(5)
    expect(Dollar.new(5)).not_to eq Dollar.new(6)
    expect(Franc.new(5)).to eq Franc.new(5)
    expect(Franc.new(5)).not_to eq Franc.new(6)
    expect(Franc.new(5)).not_to eq Dollar.new(5)
  end

  it "can be multiplied with CHF" do
    five = Franc.new(5)
    expect(five.times(2)).to eq Franc.new(10)
    expect(five.times(3)).to eq Franc.new(15)
  end
end

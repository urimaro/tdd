RSpec.describe "Money" do
  it "can be multiplied" do
    five = Money.dollar(5)
    expect(five.times(2)).to eq Money.dollar(10)
    expect(five.times(3)).to eq Money.dollar(15)
  end

  it "is considered equal to another one with the same amount" do
    expect(Money.dollar(5)).to eq Money.dollar(5)
    expect(Money.dollar(5)).not_to eq Money.dollar(6)
    expect(Franc.new(5)).to eq Franc.new(5)
    expect(Franc.new(5)).not_to eq Franc.new(6)
    expect(Franc.new(5)).not_to eq Money.dollar(5)
  end

  it "can be multiplied with CHF" do
    five = Franc.new(5)
    expect(five.times(2)).to eq Franc.new(10)
    expect(five.times(3)).to eq Franc.new(15)
  end
end

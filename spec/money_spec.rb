RSpec.describe "Money" do
  it "can be multiplied" do
    five = Dollar.new(5)
    product = five.times(2)
    expect(product.amount).to eq 10
    product = five.times(3)
    expect(product.amount).to eq 15
  end

  it "is considered equal to another one with the same amount" do
    expect(Dollar.new(5)).to eq Dollar.new(5)
  end
end

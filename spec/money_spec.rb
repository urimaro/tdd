RSpec.describe "Money" do
  it "can be multiplied" do
    five = Money.dollar(5)
    expect(five.times(2)).to eq Money.dollar(10)
    expect(five.times(3)).to eq Money.dollar(15)
  end

  it "is considered equal to another one with the same amount" do
    expect(Money.dollar(5)).to eq Money.dollar(5)
    expect(Money.dollar(5)).not_to eq Money.dollar(6)
    expect(Money.franc(5)).not_to eq Money.dollar(5)
  end

  it "returns its currency" do
    expect(Money.dollar(1).currency).to eq "USD"
    expect(Money.franc(1).currency).to eq "CHF"
  end

  it "adds two dollar objects" do
    five = Money.dollar(5)
    sum = five.plus(five)
    bank = Bank.new
    reduced = bank.reduce(sum, "USD")
    expect(reduced).to eq Money.dollar(10)
  end

  it "returns sum when plus was called" do
    five = Money.dollar(5)
    sum = five.plus(five)
    expect(five).to eq sum.augend
    expect(five).to eq sum.addend
  end

  it "reduces Sum" do
    sum = Sum.new(Money.dollar(3), Money.dollar(4))
    bank = Bank.new
    result = bank.reduce(sum, "USD")
    expect(result).to eq Money.dollar(7)
  end

  it "reduces Money" do
    bank = Bank.new
    result = bank.reduce(Money.dollar(1), "USD")
    expect(result).to eq Money.dollar(1)
  end

  it "reduces Money with a different currency" do
    bank = Bank.new
    bank.add_rate("CHF", "USD", 2)
    result = bank.reduce(Money.franc(2), "USD")
    expect(result).to eq Money.dollar(1)
  end

  it "tests identity rate" do
    expect(Bank.new.rate("USD", "USD")).to eq 1
  end

  it "adds mixed currencies" do
    five_bucks = Money.dollar(5)
    ten_francs = Money.franc(10)
    bank = Bank.new
    bank.add_rate("CHF", "USD", 2)
    result = bank.reduce(five_bucks.plus(ten_francs), "USD")
    expect(result).to eq Money.dollar(10)
  end

  it "sum plus money" do
    five_bucks = Money.dollar(5)
    ten_francs = Money.franc(10)
    bank = Bank.new
    bank.add_rate("CHF", "USD", 2)
    sum = Sum.new(five_bucks, ten_francs).plus(five_bucks)
    result = bank.reduce(sum, "USD")
    expect(result).to eq Money.dollar(15)
  end

  it "sum times" do
    five_bucks = Money.dollar(5)
    ten_francs = Money.franc(10)
    bank = Bank.new
    bank.add_rate("CHF", "USD", 2)
    sum = Sum.new(five_bucks, ten_francs).times(2)
    result = bank.reduce(sum, "USD")
    expect(result).to eq Money.dollar(20)
  end
end

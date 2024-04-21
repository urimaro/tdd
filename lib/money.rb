class Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def times(multiplier)
    raise NotImplementedError
  end

  def currency()
    @currency
  end

  def ==(object)
    @amount == object.amount && self.class == object.class
  end

  def self.dollar(amount)
    Dollar.new(amount, "USD")
  end

  def self.franc(amount)
    Franc.new(amount, "CHF")
  end
end

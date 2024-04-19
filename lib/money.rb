class Money
  attr_reader :amount, :currency

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
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end
end

class Money
  attr_reader :amount

  def times(multiplier)
    raise NotImplementedError
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

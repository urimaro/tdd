class Dollar
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Dollar.new(@amount * multiplier)
  end

  def ==(object)
    @amount == object.amount
  end
end

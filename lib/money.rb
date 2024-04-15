class Money
  attr_reader :amount

  def ==(object)
    @amount == object.amount
  end
end

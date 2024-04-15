class Money
  attr_reader :amount

  def ==(object)
    @amount == object.amount && self.class == object.class
  end
end

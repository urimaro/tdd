class Pair
  attr_reader :from, :to

  def initialize(from, to)
    @from = from
    @to = to
  end

  def ==(object)
    return false unless object.instance_of?(Pair)
    @from == object.from && @to == object.to
  end

  def eql?(object)
    self.==(object)
  end

  def hash
    0
  end
end

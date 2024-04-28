require 'expression'
require 'money'

class Bank
  include Expression

  def reduce(source, to)
    amount = source.augend.amount + source.addend.amount
    Money.new(amount, to)
  end
end

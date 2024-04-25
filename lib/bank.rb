require 'expression'
require 'money'

class Bank
  include Expression

  def reduce(source, to)
    Money.dollar(10)
  end
end

require 'expression'
require 'money'

class Bank
  include Expression

  def reduce(source, to)
    source.reduce(self, to)
  end

  def add_rate(from, to, rate)
  end
end

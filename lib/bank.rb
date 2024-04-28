require 'expression'
require 'money'

class Bank
  include Expression

  def reduce(source, to)
    source.reduce(to)
  end
end

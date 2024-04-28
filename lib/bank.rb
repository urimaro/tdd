require 'expression'
require 'money'

class Bank
  include Expression

  def reduce(source, to)
    if source.is_a?(Money)
      return source
    end
    source.reduce(to)
  end
end

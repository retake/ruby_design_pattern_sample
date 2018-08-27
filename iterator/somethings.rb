class  Somethings

  def initialize
    @somethings = []
  end

  def append(arg_something)
    @somethings << arg_something
  end

  def get(index)
    @somethings[index]
  end

  def count
    @somethings.count
  end

  def iterator
    SomethingsIterator.new(self)
  end

end


class SomethingsForMixin
  include Enumerable

  def initialize
    @somethings = []
  end

  def each(&block)
    @somethings.each(&block)
  end

  def append(arg_something)
    @somethings << arg_something
  end

end

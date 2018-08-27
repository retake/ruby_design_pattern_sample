class SomethingsIterator

  def initialize(arg_somethings)
    @somethings =  arg_somethings
    @index = 0
  end

  def has_next
     return true if @index < @somethings.count
     false
  end

  def next
    @index += 1
    @somethings.get(@index-1)
  end

end

class RealService

  def do_something
    puts %(#{self.class}: #{__method__})
  end

  def do_other
    puts %(#{self.class}: #{__method__})
  end

end

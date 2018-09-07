class Client

  def initialize(arg_strategy)
    @strategy = arg_strategy
  end

  def print_class
    @strategy.print_class
  end

end

class ClientProc

  def initialize(&arg_strategy_proc)
    @strategy = arg_strategy_proc
  end

  def print_class
    @strategy.call
  end
end

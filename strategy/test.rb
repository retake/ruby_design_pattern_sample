require './client'
require './strategy_a'
require './strategy_b'


Client.new(StrategyA.new).print_class

Client.new(StrategyB.new).print_class

ClientProc.new(&lambda { puts 'strategy_proc_a' }).print_class

ClientProc.new(&lambda { puts 'strategy_proc_b' }).print_class

ClientProc.new{ puts 'strategy_proc_c' }.print_class

strategy = lambda { puts 'strategy_proc_d' }
ClientProc.new(&strategy).print_class

class BaseComponent

  def put_lines
    %(#{self.class}: #{__method__})
  end

  def other_method
    %(#{self.class}: #{__method__})
  end

end


require 'forwardable'

class DecoratorA
  extend Forwardable
  def_delegators :@component, :other_method

  def initialize(arg_component)
    @component = arg_component
  end

  def put_lines
    %(#{self.class}: #{@component.put_lines})
  end

end


class DecoratorB
  extend Forwardable
  def_delegators :@component, :other_method

  def initialize(arg_component)
    @component = arg_component
  end

  def put_lines
    %(#{self.class}: #{@component.put_lines})
  end

end

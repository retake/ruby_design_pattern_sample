class MainParts
  attr_accessor :spec

  def initialize(arg_spec=:default)
    @spec = arg_spec
  end

end

class SubParts
  attr_accessor :pattern

  def initialize(arg_pattern=:a_pattern)
    @pattern = arg_pattern
  end

end

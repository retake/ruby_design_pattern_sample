require './component_base'

class LeafA < ComponentBase

  def initialize
    super('leaf_a')
  end

  def execute_component_method
    puts "#{@name}: executed!"
  end
end

class LeafB < ComponentBase

  def initialize
    super('leaf_b')
  end

  def execute_component_method
    puts "#{@name}: executed!"
  end
end

class LeafC < ComponentBase

  def initialize
    super('leaf_c')
  end

  def execute_component_method
    puts "#{@name}: executed!"
  end
end

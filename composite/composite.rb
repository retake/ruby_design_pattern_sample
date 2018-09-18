require './composite_base'
require './leaf'

class CompositeLeaves < CompositeBase

  def initialize
    super('composite_leaves')
    add_sub_component(LeafA.new)
    add_sub_component(LeafB.new)
  end

end

class CompositeMixed < CompositeBase

  def initialize
    super('composite_mixed')
    add_sub_component(CompositeLeaves.new)
    add_sub_component(LeafC.new)
  end

end

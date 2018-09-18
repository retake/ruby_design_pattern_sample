require './product'

class Builder
  attr :product

  def initialize
    @product = Product.new
  end

  def high_spec
    @product.main_parts = MainParts.new(:higher)
  end

  def b_pattern
    @product.sub_parts = SubParts.new(:b_pattern)
  end
end

class Product

  def initialize(element_pattern)
    @element_a = element_pattern.new_element_instance_a
    @element_b = element_pattern.new_element_instance_b
  end

  def print_infos
    puts "element_a: #{@element_a.class}"
    puts "element_b: #{@element_b.class}"
  end

end

class AbstractFactory
  def initialize(arg_element_class_a, arg_element_class_b)
    @element_class_a = arg_element_class_a
    @element_class_b = arg_element_class_b
  end

  def new_element_instance_a; @element_class_a.new; end
  def new_element_instance_b; @element_class_b.new; end

end

class ElementA1; end
class ElementA2; end
class ElementB1; end
class ElementB2; end


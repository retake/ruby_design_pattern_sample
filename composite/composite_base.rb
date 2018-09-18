require './component_base'

class CompositeBase < ComponentBase

  def initialize(arg_name)
    @name = arg_name
    @sub_components = []
  end

  def add_sub_component(arg_component)
    @sub_components << arg_component
  end

  def remove_sub_component(arg_component)
    @sub_components.delete(arg_component)
  end

  def execute_component_method
    @sub_components.each {|sub_component| sub_component.execute_component_method}
    puts "#{@name}: executed!"
  end

end

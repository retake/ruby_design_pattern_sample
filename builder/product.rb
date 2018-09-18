require './parts'

class Product
  attr_accessor :main_parts, :sub_parts

  def initialize(arg_main_parts=MainParts.new, arg_sub_parts=SubParts.new)
    @main_parts = arg_main_parts
    @sub_parts = arg_sub_parts
  end

  def parts
    puts "main_parts.spec: #{@main_parts.spec}"
    puts "sub_parts.pattern #{@sub_parts.pattern}"
  end

end

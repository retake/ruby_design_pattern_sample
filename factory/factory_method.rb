class Creater
  def initialize; @instance = new_instance; end
  def info; "instance: #{@instance.class}"; end
end

class ProductA; end
class ProductACreater < Creater
  def new_instance; ProductA.new; end
end

class ProductB; end
class ProductBCreater < Creater
  def new_instance; ProductB.new; end
end

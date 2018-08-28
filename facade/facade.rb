require './models'

class Facade

  def execute
    model_a = ModelA.new
    model_b = ModelB.new
    model_c = ModelC.new

    a_result = model_a.execute
    b_result = model_b.execute(a_result)
    model_c.execute(b_result)
  end

end

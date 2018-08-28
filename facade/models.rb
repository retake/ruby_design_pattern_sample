class ModelA
  def execute
    'model_a'
  end
end

class ModelB
  def execute(arg_str)
    "model_b : #{arg_str}"
  end
end

class ModelC
  def execute(arg_str)
    "model_c : #{arg_str}"
  end
end

require './adaptee'

class Adaptee
  def adapt
    %w(abc def ghi).collect {|adaptee_str| { name: 'adaptee_direct_class_str', val: adaptee_str } }
  end
end


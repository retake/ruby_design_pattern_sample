require './adaptee'

class AdapterExtend < Adaptee

  def adapt
    adaptee.collect {|adaptee_str| { name: 'adaptee_extend_str', val: adaptee_str } }
  end

end

require './adaptee'

class AdapterTransfer

  def adapt
    adaptee_str_list = Adaptee.new.adaptee
    adaptee_str_list.collect {|adaptee_str| { name: 'adaptee_transfer_str', val: adaptee_str } }
  end

end

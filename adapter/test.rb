require './adapter_extend'
require './adapter_transfer'
require './adaptee'

### 変換前

puts '****変換前****'
puts Adaptee.new.adaptee


### 通常のデザインパターン（継承・委譲）
puts '****継承****'
puts AdapterExtend.new.adapt
puts '****委譲****'
puts AdapterTransfer.new.adapt

### rubyで可能な対応（インスタンスの直接変更、classの直接変更）
puts '****インスタンス書き換え****'
adaptee_ins = Adaptee.new
class << adaptee_ins
  def adapt
    adaptee.collect {|adaptee_str| { name: 'adaptee_direct_instance_str', val: adaptee_str } }
  end
end
puts adaptee_ins.adapt

puts '****クラス書き換え****'
require './adapter_direct' # Adapteeクラスを書き換えてるため、他に影響が及ばないように実行直前に読み込んでいる
puts Adaptee.new.adapt


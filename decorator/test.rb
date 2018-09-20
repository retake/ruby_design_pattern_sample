require './decorator'

component = DecoratorB.new( DecoratorA.new( BaseComponent.new ) )

puts ''
puts ' ### DecoratorB、DecoratorAを通して装飾しつつ、BaseComponentのput_linesを実行 ###'
puts component.put_lines

puts ''
puts ' ### DecoratorB、DecoratorAを通して、委譲したBaseComponentのother_methodを実行 ###'
puts component.other_method

puts ''
puts ' ### DecoratorBに対して、存在しないmethodを実行 ###'
puts component.missing_method rescue puts $!


puts ''
puts ' ### BaseComponentのインスタンスを直接書き換え、aliasで装飾を実行 ###'
component = BaseComponent.new
class << component
  alias old_put_lines put_lines

  def put_lines
    %(changed: #{old_put_lines})
  end
end

puts component.put_lines

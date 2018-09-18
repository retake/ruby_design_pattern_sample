require './composite'
require './leaf'

puts '### leaf要素実行 ###'
LeafA.new.execute_component_method

puts '### composite(leafのみ）要素実行 ###'
CompositeLeaves.new.execute_component_method

puts '### composite(leaf/composite混合）要素実行 ###'
CompositeMixed.new.execute_component_method

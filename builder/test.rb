require './product'
require './builder'

puts '### オブジェクトを直接作成する場合（単純構成） ###'
puts Product.new.parts

puts '### オブジェクトを直接作成する場合（ハイスペック構成） ###'
my_product = Product.new
my_product.main_parts = MainParts.new(:higher)
my_product.sub_parts = SubParts.new(:b_pattern)
puts my_product.parts

puts '### Builderパターンで作成する場合（単純構成） ###'
puts Builder.new.product.parts

puts '### Builderパターンで作成する場合（ハイスペック構成） ###'
builder = Builder.new
builder.high_spec
builder.b_pattern
my_product = builder.product
puts my_product.parts


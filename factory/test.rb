require './factory_method'

puts ''
puts ' ### A要素を持ったProductを作成する（FactoryMethod） ###'
my_product = ProductACreater.new
puts my_product.info

puts ''
puts ' ### B要素を持ったProductを作成する（FactoryMethod） ###'
my_product = ProductBCreater.new
puts my_product.info


require './abstract_factory'

puts ''
puts ' ### A1要素とB2要素の組み合わせを持ったProductを作成する（AbstractFactory) ###'
element_set = AbstractFactory.new(ElementA1, ElementB2)
my_product = Product.new(element_set)
my_product.print_infos

puts ''
puts ' ### A2要素とB1要素の組み合わせを持ったProductを作成する（AbstractFactory) ###'
element_set = AbstractFactory.new(ElementA2, ElementB1)
my_product = Product.new(element_set)
my_product.print_infos


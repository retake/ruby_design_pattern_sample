require './template'

puts ''
puts ' ### 親メソッド（処理実装無し）で処理を実行 ###'
Parent.new.execute rescue puts $!.class

puts ''
puts ' ### 子メソッドA（アルゴリズムだけ実装）で処理を実行 ###'
ChildA.new.execute

puts ''
puts ' ### 子メソッドB（アルゴリズムだけ実装）で処理を実行 ###'
ChildB.new.execute



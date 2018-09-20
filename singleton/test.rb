require './singleton'

puts ''
puts 'GoFのSingleton（Class内で唯一のインスタンスを保持）'
SingletonGoF.instance.increment
puts SingletonGoF.instance.count
SingletonGoF.new rescue puts $!

puts ''
puts 'moduleを使ったSingleton'
SingletonWithModule.instance.increment
SingletonWithModule.instance.increment
puts SingletonWithModule.instance.count
SingletonWithModule.new rescue puts $!

puts ''
puts 'classを直接使用したSingleton'
SingletonOnlyClass.increment
SingletonOnlyClass.increment
SingletonOnlyClass.increment
puts SingletonOnlyClass.count
SingletonOnlyClass.new rescue puts $!


require './command'

command_composite = CommandComposite.new(0)

command_composite.add_command(CommandAddNum.new(1))
command_composite.add_command(CommandAddNum.new(5))
command_composite.add_command(CommandAddNum.new(-3))
command_composite.add_command(CommandAddNum.new(22))

puts ''
puts ' *** 初期状態 ***'
puts %(total_num: #{command_composite.total_num})

puts ''
puts ' *** 実行コマンド説明 ***'
command_composite.description

puts ''
puts ' *** 実行 ***'
puts %(total_num: #{command_composite.execute})

puts ''
puts ' *** 取り消し実行 ***'
puts %(total_num: #{command_composite.unexecute})

require './subject'
require './observer'

puts ''

puts '*** Observableモジュールを使用 ***'
my_subject = SubjectWithModule.new('my_subject', 'first_status')

observer = Observer.new
observer_detail = ObserverDetail.new

puts '* 単純なメッセージを出力するObserverを登録し、処理実行 *'
my_subject.add_observer(observer)
my_subject.status = 'first_changed_status'
puts '* 複雑なメッセージを出力するObserverを登録し、処理実行 *'
my_subject.add_observer(observer_detail)
my_subject.status = 'second_changed_status'
puts '* 単純なメッセージを出力するObserverを削除し、処理実行 *'
my_subject.delete_observer(observer)
my_subject.status = 'third_changed_status'


puts ''

puts '*** コードブロックを使用したい場合 ***'
my_subject = CodeBlockPatternSubject.new('my_subject', 'first_status')

observer_block = lambda{|changed_subject| puts %(#{changed_subject.class}: 変更されました) }
observer_detail_block = lambda{|changed_subject| puts %(#{changed_subject.class}: '#{changed_subject.name}'の状態が、'#{changed_subject.latest_status}'に変更されました) }

puts '* 単純なメッセージを出力するblockを登録し、処理実行 *'
my_subject.add_observer(observer_block)
my_subject.status = 'first_changed_status'
puts '* 複雑なメッセージを出力するblockを登録し、処理実行 *'
my_subject.add_observer(observer_detail_block)
my_subject.status = 'second_changed_status'
puts '* 単純なメッセージを出力するblockを削除し、処理実行 *'
my_subject.delete_observer(observer_block)
my_subject.status = 'third_changed_status'

puts ''

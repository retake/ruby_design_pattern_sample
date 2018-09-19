require 'observer'
class SubjectWithModule
  include Observable #observerパターン用モジュール

  attr_reader :name, :latest_status

  def initialize(arg_name, arg_status)
    @name = arg_name
    @latest_status = arg_status
  end

  def status=(arg_status)
    @latest_status = arg_status
    changed # Observableのお作法として、notify_observersの前にこれが必要になる
    notify_observers(self)
  end
end

module CodeBlockPatternObserver

  def initialize; @observers = []; end # 1行表示をやってみただけであり、observerパターンには関係が無い

  def add_observer(observer) # ブロックを直接受け取りたい場合は、&である必要がある
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each {|observer| observer.call(self) }
  end

end

class CodeBlockPatternSubject
  include CodeBlockPatternObserver

  attr_reader :name, :latest_status

  def initialize(arg_name, arg_status)
    super() # CodeBlockPatternObserverのinitializeを実行
    @name = arg_name
    @latest_status = arg_status
  end

  def status=(arg_status)
    @latest_status = arg_status
    notify_observers
  end

end

require './real_service'

class ProxyService

  def do_something
    pre_process ### 実処理の前に実行したい処理を差し込む
    real_service.do_something
  end

  ### 実処理には存在するがproxyからは委譲するだけの処理を、一括して定義する
  def method_missing(name, *args)
    real_service.public_send(name, *args)
  end

  private

  ### 実処理が必要にる段階までインスタンス化を遅延させる
  def real_service
    @real_service ||= RealService.new
  end

  def pre_process
    puts %(#{self.class}: #{__method__})
  end

end

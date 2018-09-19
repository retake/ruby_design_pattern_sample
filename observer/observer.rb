class Observer
  def update(arg_object)
    puts %(#{self.class}: 変更されました)
  end
end

class ObserverDetail
  def update(arg_object)
    puts %(#{self.class}: '#{arg_object.name}'の状態が、'#{arg_object.latest_status}'に変更されました)
  end
end

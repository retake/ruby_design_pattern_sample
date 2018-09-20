class SingletonGoF

  def initialize
    @counter = 0
  end

  def increment
    @counter += 1
  end

  def count
    %(#{self.class}: #{@counter})
  end

  ### instance作成時に、initializeメソッドが定義されている必要があるため、メイン処理よりも後ろに定義する。
  ### newをprivateにしているため、self.instance内で||=を使った遅延実装が出来ない
  @@instance = self.new

  def self.instance
    @@instance
  end

  private_class_method :new
end


require 'singleton'

class SingletonWithModule
  include Singleton

  def initialize
    @counter = 0
  end

  def increment
    @counter += 1
  end

  def count
    %(#{self.class}: #{@counter})
  end

end


class SingletonOnlyClass

  @@counter = 0

  def self.increment
    @@counter += 1
  end

  def self.count
    %(SingletonOnlyClass: #{@@counter})
  end

  private_class_method :new
end

class Parent

  def execute
    puts first_process
    puts second_process
    puts third_process
    puts last_process
  end

  private

  def first_process; no_implement_error; end
  def second_process; no_implement_error; end
  def third_process; no_implement_error; end
  def last_process; no_implement_error; end

  def no_implement_error; raise; end
end


class ChildA < Parent

  private

  def first_process
    "#{self.class}: #{__method__}"
  end

  def second_process
    "#{self.class}: #{__method__}"
  end

  def third_process
    "#{self.class}: #{__method__}"
  end

  def last_process
    "#{self.class}: #{__method__}"
  end

end

class ChildB < Parent

  private

  def first_process
    "#{self.class}: #{__method__}"
  end

  def second_process
    "#{self.class}: #{__method__}"
  end

  def third_process
    "#{self.class}: #{__method__}"
  end

  def last_process
    "#{self.class}: #{__method__}"
  end

end


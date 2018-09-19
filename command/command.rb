class CommandComposite

  attr_reader :total_num

  def initialize(arg_base_num)
    @total_num = arg_base_num
    @commands = []
  end

  def add_command(arg_command)
    @commands << arg_command
  end

  def description
    @commands.each {|command| command.description }
  end

  def execute
    @commands.each {|command| @total_num = command.execute(@total_num) }
    @total_num
  end

  def unexecute
    @commands.reverse.each {|command| @total_num = command.unexecute(@total_num) }
    @total_num
  end
end


class CommandAddNum

  def initialize(arg_calc_num)
    @calc_num = arg_calc_num
  end

  def description
    puts %(#{@calc_num}を加えます)
  end

  def execute(arg_num)
    arg_num + @calc_num
  end

  def unexecute(arg_num)
    arg_num - @calc_num
  end

end


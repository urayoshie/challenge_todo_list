class ToDo

  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
    print "【追加】"
    task.info
  end

  def info
    if @tasks.empty?
      puts "【！】タスクはありません。"
    else
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
          @tasks.each do |task|
            task.info
          end
    puts "*=*=*=*=*=*=*=*=*=*=*==*=*=*=*=*=*=*=*=*"
    end
  end

  def delete(id:)
    task = @tasks.find {|task| task.id == id }
    if task.nil?
      puts "【！】 該当idのタスクはありません。"
    else
      @tasks.delete(task)
      print "【削除】"
      task.info
    end
  end

end

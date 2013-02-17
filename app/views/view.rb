module Output
  def print_beautiful(tasks)
    tasks.each do |task|
      if task.completed_at == nil
        puts "#{task.id}. #{task.task_name}"
      else
        puts "#{task.id}. #{task.task_name} |Completed?: #{task.completed_at}| "
      end
      
    end
  end

  def print_beautiful_list(lists)
    lists.each do |list|
      puts "#{list.id}. #{list.name}"
    end
  end   

  def delete_notification(task)
    puts "Deleted '#{task.task_name}' from your TODO list..."
  end

  def delete_list_notification(list)
    puts "Deleted '#{list.name}' from your TODO list..."
  end

  def add_notification(task)
    puts "Added '#{task.task_name}' to your TODO list..."
  end

  def add_notification_list(new_list)
    puts "Added your todo list '#{new_list.name}'"
  end

  def complete_notification(task)
    puts "Marked '#{task.task_name}' as 'complete' in your TODO list..."
  end

  def duplicate_notification
    puts "yo you already have a task by that name! Change the name unless you want to do it twice :p"
  end
  
  def add_tag_notification(tag, task_id)
    puts "You have added tag #{tag} to task_id #{task_id}"
  end

end

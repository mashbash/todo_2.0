require_relative 'task_controller.rb'



class Parser
  include Controller

  def initialize(command)
    parse_input(command)

  end

  def parse_input(command)
    action, list_name = command[0].split(':')
    task_name = command[1..-1].join(' ') unless command.length == 1 
   
    unless action == 'list'
      case action
        when 'add' then
          add_new_list(task_name) if list_name == 'new_list'
          add_task_to_list(list_name, task_name) unless list_name == 'new_list'
        when 'delete' then
          delete_list(list_name) if command.length == 1
          delete_task(list_name, task_name) unless command.length == 1
        when 'complete' then
          complete_task(list_name, task_name)
        when 'tag' then
          task_id = list_name
          tags = task_name.split
          deal_with_tags(task_id, tags)
      end
    else
      case list_name
        when 'all' then
          list_all_lists
        when 'completed' then
          list_completed_tasks(task_name)
        when 'outstanding' then
          list_outstanding_tasks(task_name)
        else
          list_tasks_in_list(list_name)
      end
    end
  end
end





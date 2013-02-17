#include this file in the driver code view

#include view
#include class tasks
require_relative '../views/view.rb'
require_relative '../models/task.rb'
require_relative '../models/list.rb'
require_relative '../models/tag.rb'
require_relative '../models/task_tags.rb'


module Controller
  include Output

  def add_new_list(list_name)
    new_list = List.create(:name => list_name)
    add_notification_list(new_list)
  end


  def delete_list(id) ## A list ID needs to be passed in order to delete the list
    list = List.find(id)
    list.destroy
    delete_list_notification(list)
  end

  def list_all_lists
    lists = List.all
    print_beautiful_list(lists)
  end

  def add_task_to_list(list_name, task_name) 
    list = List.where("name = '#{list_name}'").first
    new_task = Task.create(:task_name => task_name, :list_id => list.id)
  end

  def list_tasks_in_list(list_name)
    list = List.find_by_name(list_name)
    tasks = list.tasks
    print_beautiful(tasks)
  end


  def delete_task(list_name, task_id) 
    list = List.where("name = '#{list_name}'").first
    tasks = list.tasks
    task_to_be_deleted = tasks.select{|task| task[:id] == task_id.to_i}
    task_to_be_deleted.first.destroy
  end

  def complete_task(list_name, task_id) 
    task = Task.find(task_id)
    task.update_attribute(:completed_at, Time.now)
    complete_notification(task)
  end


  def list_completed_tasks(list_name)
    list = List.where("name = '#{list_name}'").first
    tasks = list.tasks
    completed_tasks = tasks.select{|task| task[:completed_at] != nil}
    print_beautiful(completed_tasks)
  end
  
  def list_outstanding_tasks(list_name)
    list = List.where("name = '#{list_name}'").first
    tasks = list.tasks
    completed_tasks = tasks.select {|task| task[:completed_at] == nil}
    print_beautiful(completed_tasks)
  end

  def deal_with_tags(task_id, tags)
    tags.each do |tag| 
      new_tag = Tag.create(:name => tag)
      task = Task.find(task_id)
      task.tags << new_tag 
      add_tag_notification(tag, task_id)
    end
  end



end



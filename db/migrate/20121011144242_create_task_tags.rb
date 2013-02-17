require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTaskTags < ActiveRecord::Migration
  def change
    create_table :task_tags do |table|
      table.integer :task_id
      table.integer :tag_id
    # HINT: checkout ActiveRecord::Migration.create_table
    end
  end  
end



require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |table|
      table.string :task_name
      table.integer :list_id
      table.datetime :created_at
      table.datetime :completed_at
    # HINT: checkout ActiveRecord::Migration.create_table
    end
  end  
end



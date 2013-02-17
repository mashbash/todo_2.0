require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |table|
      table.string :name
    # HINT: checkout ActiveRecord::Migration.create_table
    end
  end  
end



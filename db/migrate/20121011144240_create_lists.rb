require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |table|
      table.string :name
      table.datetime :created_at
    # HINT: checkout ActiveRecord::Migration.create_table
    end
  end  
end



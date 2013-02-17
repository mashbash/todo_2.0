require_relative '../../db/config'

class TaskTag < ActiveRecord::Base

  belongs_to :task
  belongs_to :tag

# belongs_to :user
 
end

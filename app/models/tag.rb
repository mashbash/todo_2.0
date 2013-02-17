require_relative '../../db/config'

class Tag < ActiveRecord::Base

  validates :name, :uniqueness => true

  has_many :task_tags
  has_many :tasks, :through => :task_tags

# belongs_to :user
 
end


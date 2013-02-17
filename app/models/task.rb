require_relative '../../db/config'

class Task < ActiveRecord::Base

  validates :name, :uniqueness => true

  has_many :task_tags
  has_many :tags, :through => :task_tags
 
end

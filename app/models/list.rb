require_relative '../../db/config'

class List < ActiveRecord::Base
  validates :name, :uniqueness => true

  has_many :tasks, :dependent => :destroy ## This cool feature deletes all the tasks when a list is deleted

# belongs_to :user
 
end

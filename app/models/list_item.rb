class ListItem < ActiveRecord::Base
  attr_accessible :complete, :deadline, :priority, :task
  
  validates :task, presence: true
  validates :priority, presence: true
  validates :deadline, presence: true
  validates :list_id, presence: true
  
  belongs_to :list
end

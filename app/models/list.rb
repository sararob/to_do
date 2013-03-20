class List < ActiveRecord::Base
  attr_accessible :title
  
  validates :title, presence: true
  
  belongs_to :user
  has_many :list_items
end

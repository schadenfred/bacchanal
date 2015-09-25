class Position < ActiveRecord::Base
  
  belongs_to :positionable, polymorphic: true
  belongs_to :user
  belongs_to :org

  validates :positionable, :user, presence: true
end

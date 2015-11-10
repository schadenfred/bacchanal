class Position < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :org

  validates :org, :user, presence: true
end

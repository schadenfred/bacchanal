class Position < ActiveRecord::Base
  
  belongs_to :positionable, polymorphic: true
  belongs_to :user
end

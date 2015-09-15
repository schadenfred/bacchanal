class Photo < ActiveRecord::Base
  dragonfly_accessor :image    # defines a reader/writer for image

  belongs_to :photographable, polymorphic: true
  belongs_to :user
end


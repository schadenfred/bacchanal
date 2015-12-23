class Attachment < ActiveRecord::Base

  dragonfly_accessor :attachment  


  belongs_to :attachable, polymorphic: true
  belongs_to :wine
end

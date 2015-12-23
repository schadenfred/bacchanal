class Attachment < ActiveRecord::Base

  dragonfly_accessor :attachment  

  belongs_to :attachable, polymorphic: true
  belongs_to :wine

  def filename_extension
    self.attachment_name.split(".").last
  end
end

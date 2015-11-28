module IdentifiableConcern

  extend ActiveSupport::Concern

  included do 
    has_many :identities, as: :identifiable
  end

  def default_gallery
    galleries.find_by(name: "default")
  end

  def default_photo
    default_gallery.slides.first.photo
  end
end

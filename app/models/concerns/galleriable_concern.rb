module GalleriableConcern

  extend ActiveSupport::Concern

  included do 
    has_many :galleries, as: :galleriable
    has_many :slides, through: :galleries
    has_many :photos, as: :photographable
  end

  def default_gallery
    galleries.find_by(name: "default")
  end

  def default_photo
    default_gallery.slides.first.photo
  end
end

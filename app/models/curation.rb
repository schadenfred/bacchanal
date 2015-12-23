class Curation < ActiveRecord::Base

  belongs_to :curatable, polymorphic: true
  belongs_to :review
end
